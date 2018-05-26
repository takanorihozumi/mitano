class Scraping
  # heroku run rails runner scripts/scraping.rb

 def self.execute(drama, season, count, id)
    count.times do |i|
      agent = Mechanize.new
      page = agent.get("http://www.superdramatv.com/line/#{drama}/episode/detail#{season}-#{i+1}.html")
      titles = page.search('h2')
      del1 =titles.first.inner_text.delete('第話')
      puts title = del1.delete("0").delete("1").delete("2").delete("3").delete("4").delete("5").delete("6").delete("7").delete("8").delete("9").delete("/ [ シリーズ通算 #］").delete("[[ ]]]").strip
      contents = page.search('.onetxt')
      puts contents.first.inner_text
      Episode.create(episode_name: title, over_view: contents.first.inner_text, season_id: id,episode_no: i+1, source_url: "http://www.superdramatv.com/line/#{drama}/episode/detail#{season}-#{i+1}.html")
    end
  end

end
# season_idをただす！！！！！！！！！！！！
Scraping.execute('macgyver',1,21,60)
# Scraping.execute('scorpion',2,25,61)
# Scraping.execute('scorpion',3,25,62)
# Scraping.execute('mentalist',4,24,56)
# Scraping.execute('mentalist',5,22,57)
# Scraping.execute('mentalist',6,22,58)
# Scraping.execute('mentalist',7,13,59)


# Scraping.execute4
# Scraping.execute5
# Scraping.execute6
