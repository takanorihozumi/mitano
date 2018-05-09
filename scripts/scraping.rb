class Scraping
  # heroku run rails runner scripts/scraping.rb
  # gossip girl
 #  def self.execute1
 #    target = 18
 #    target.times do |i|
 #      agent = Mechanize.new
 #      page = agent.get("http://www.superdramatv.com/line/gossipgirl/episode/detail1-#{i+1}.html")
 #      titles = page.search('h3')
 #      puts titles.first.inner_text
 #      contents = page.search('.onetxt')
 #      puts contents.first.inner_text
 #      Episode.create(episode_name: titles.first.inner_text, over_view: contents.first.inner_text, season_id: 27)
 #    end
 #  end
 # def self.execute2
 #    target = 25
 #    target.times do |i|
 #      agent = Mechanize.new
 #      page = agent.get("http://www.superdramatv.com/line/gossipgirl/episode/detail2-#{i+1}.html")
 #      titles = page.search('h3')
 #      puts titles.first.inner_text
 #      contents = page.search('.onetxt')
 #      puts contents.first.inner_text
 #      Episode.create(episode_name: titles.first.inner_text, over_view: contents.first.inner_text, season_id: 28)
 #    end
 #  end
  #  def self.execute
  #   target = 5
  #   target.times do |i|
  #     agent = Mechanize.new
  #     page = agent.get("http://www.superdramatv.com/line/grimm/episode/detail1-#{i+1}.html")
  #     titles = page.search('h2')
  #     puts titles.first.inner_text
  #     contents = page.search('.onetxt')
  #     puts contents.first.inner_text
  #   end

  # end
 def self.execute3
    target = 22
    target.times do |i|
      agent = Mechanize.new
      page = agent.get("http://www.superdramatv.com/line/gossipgirl/episode/detail3-#{i+1}.html")
      titles = page.search('h2')
      puts titles.first.inner_text
      contents = page.search('.onetxt')
      puts contents.first.inner_text
      Episode.create(episode_name: titles.first.inner_text, over_view: contents.first.inner_text, season_id: 29)
    end
  end
 def self.execute4
    target = 22
    target.times do |i|
      agent = Mechanize.new
      page = agent.get("http://www.superdramatv.com/line/gossipgirl/episode/detail4-#{i+1}.html")
      titles = page.search('h2')
      puts titles.first.inner_text
      contents = page.search('.onetxt')
      puts contents.first.inner_text
      Episode.create(episode_name: titles.first.inner_text, over_view: contents.first.inner_text, season_id: 30)
    end
  end
 def self.execute5
    target = 24
    target.times do |i|
      agent = Mechanize.new
      page = agent.get("http://www.superdramatv.com/line/gossipgirl/episode/detail5-#{i+1}.html")
      titles = page.search('h2')
      puts titles.first.inner_text
      contents = page.search('.onetxt')
      puts contents.first.inner_text
      Episode.create(episode_name: titles.first.inner_text, over_view: contents.first.inner_text, season_id: 31)
    end
  end
 def self.execute6
    target = 10
    target.times do |i|
      agent = Mechanize.new
      page = agent.get("http://www.superdramatv.com/line/gossipgirl/episode/detail6-#{i+1}.html")
      titles = page.search('h2')
      puts titles.first.inner_text
      contents = page.search('.onetxt')
      puts contents.first.inner_text
      Episode.create(episode_name: titles.first.inner_text, over_view: contents.first.inner_text, season_id: 32)
    end
  end
end
# Scraping.execute

# Scraping.execute1
# Scraping.execute2

# fail ...
Scraping.execute3
Scraping.execute4
Scraping.execute5
Scraping.execute6
