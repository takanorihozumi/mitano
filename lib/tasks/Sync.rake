namespace :sync do
  task feeds: [:environment] do
    Feed.all.each do |feed|
      content = Feedjira::Feed.fetch_and_parse feed.url
      content.entries.each do |entry|
        local_entry = feed.entries.where(title: entry.title).first_or_initialize
        if feed.id==2  then
          p entry.summary
          p entry.content.index("img")
          local_entry.update_attributes(content: entry.summary, author: entry.author, url: entry.url, published: entry.published)

        else      
          local_entry.update_attributes(content: entry.content, author: entry.author, url: entry.url, published: entry.published)
        end
        # p entry.categories
        entry.categories.each do |category|
          local_category = local_entry.entry_categories.where(name: category).first_or_initialize
          local_category.update_attributes(name: category)
        end
        p "Synced Entry - #{entry.title}"
      end
      p "Synced Feed - #{feed.name}"
    end
  end
end