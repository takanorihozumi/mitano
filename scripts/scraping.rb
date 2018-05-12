class Scraping
  # heroku run rails runner scripts/scraping.rb

 def self.execute(drama, season, count, id)
    count.times do |i|
      agent = Mechanize.new
      page = agent.get("http://www.superdramatv.com/line/#{drama}/episode/detail#{season}-#{i+1}.html")
      titles = page.search('h2')
      del1 =titles.first.inner_text.delete('第話')
      puts title = del1.delete("0").delete("1").delete("2").delete("3").delete("4").delete("5").delete("6").delete("7").delete("8").delete("9").delete("/ [ シリーズ通算 #］").strip
      contents = page.search('.onetxt')
      puts contents.first.inner_text
      Episode.create(episode_name: title, over_view: contents.first.inner_text, season_id: id,episode_no: i+1, source_url: "http://www.superdramatv.com/line/#{drama}/episode/detail#{season}-#{i+1}.html")
    end
  end

end
# season_idをただす！！！！！！！！！！！！
Scraping.execute('grimm',1,22,33)
Scraping.execute('grimm',2,22,34)
Scraping.execute('grimm',3,22,35)
Scraping.execute('grimm',4,22,36)
Scraping.execute('grimm',5,22,37)

Scraping.execute('breakingbad',1,7,38)
Scraping.execute('breakingbad',2,13,39)
Scraping.execute('breakingbad',3,13,40)
Scraping.execute('breakingbad',4,13,41)
Scraping.execute('breakingbad',5,16,42)

# Scraping.execute4
# Scraping.execute5
# Scraping.execute6
