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
Scraping.execute('criminalmind',1,22,43)
Scraping.execute('criminalmind',2,23,44)
Scraping.execute('criminalmind',3,20,45)
Scraping.execute('criminalmind',4,26,46)
Scraping.execute('criminalmind',5,23,47)
Scraping.execute('criminalmind',6,24,48)
Scraping.execute('criminalmind',7,24,49)
Scraping.execute('criminalmind',8,24,50)
Scraping.execute('criminalmind',9,24,51)
Scraping.execute('criminalmind',10,9,52)

# Scraping.execute4
# Scraping.execute5
# Scraping.execute6
