class ScrapingFox
 def self.execute(url,count,id)
  # target = 13
  agent = Mechanize.new
  page = agent.get(url)
  titles = page.search('.my-c')
  contents = page.search('.box-text')
      # puts contents.first.inner_text
      count.times do |i|
        zenkaku = i.to_s
        del1 =titles[i].inner_text.delete('第#{zenkaku}話')
        title = del1.delete(zenkaku).delete("0").delete("1").delete("2").delete("3").delete("4").delete("5").delete("6").delete("7").delete("8").delete("9").strip
        content= contents[i].inner_text.strip
        Episode.create(episode_name: title, over_view: content, season_id: id)
      end
    end
end
# ウォーキング・デッド
ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/1348",13,20)
ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/1498",16,21)
ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/1759",16,22)
ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/2069",16,23)
ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/20091",16,24)
ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/20608",16,25)
ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/21056",16,26)

