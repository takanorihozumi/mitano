namespace :sync do
  task feeds: [:environment] do
    Feed.all.each do |feed|
      content = Feedjira::Feed.fetch_and_parse feed.url
      content.entries.each do |entry|
        local_entry = feed.entries.where(title: entry.title).first_or_initialize
        if feed.id==2  then
          local_entry.update_attributes(content: entry.summary, author: entry.author, url: entry.url, published: entry.published)
        elsif feed.id==3  then
          local_entry.update_attributes(content: Sanitize.clean(entry.summary), author: entry.author, url: entry.url, published: entry.last_modified)
        elsif feed.id==4 then
          p Sanitize.clean(entry.summary)
          local_entry.update_attributes(content: Sanitize.clean(entry.summary), author: entry.author, url: entry.url, published: entry.last_modified)
        else          
          local_entry.update_attributes(content: entry.content, author: entry.author, url: entry.url, published: entry.published)
        end
        # p entry.categories
        entry.categories.each do |category|
          local_category = local_entry.entry_categories.where(name: category).first_or_initialize
          local_category.update_attributes(name: category)
        end
      end
    end
  end
end