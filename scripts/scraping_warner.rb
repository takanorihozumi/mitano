class ScrapingWarner
  # heroku run rails runner scripts/scraping_warner.rb
 def self.execute(url,total_episode)
  season = 7
  season_id =77
  episode_no =1
  # target = 13
  agent = Mechanize.new
  page = agent.get(url)
  titles = page.search('.ttl')
  contents = page.search('.txt')
  total_episode.times do |i|
    zenkaku = i.to_s
    del1 =titles[i].inner_text.delete('第#{zenkaku}話')
    puts title = del1.delete(zenkaku).delete("0").delete("1").delete("2").delete("3").delete("4").delete("5").delete("6").delete("7").delete("8").delete("9").strip
    puts content= contents[i].inner_text.strip
    if i+1 == 11 then
      episode_no =1
      puts season = 6
      puts season_id = 76
    elsif i+1 == 21 then
      episode_no =1
      puts season = 5
      puts season_id = 75
    elsif i+1 == 33 then
      episode_no =1      
      puts season = 4
      puts season_id = 74
    elsif i+1 == 45 then
      episode_no =1
      puts season = 3
      puts season_id = 73
    elsif i+1 == 57 then
      episode_no =1
      puts season = 2
      puts season_id = 72
    elsif i+1 == 69 then
      episode_no =1
      puts season = 1
      puts season_id = 71
    end
    Episode.create(episode_name: title,episode_no:episode_no, over_view: content, season_id: season_id, source_url: url)
    episode_no = episode_no+1
  end
end
end

# foxはurlのidが連番ではないので以下の対応が必要
# 1.全シーズンのエピソード数を指定(シーズンファイナルから順に登録)

# ザ・フォロイング
ScrapingWarner.execute("http://wwws.warnerbros.co.jp/kaidora/trueblood/ep.php",80)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/1498",16,21)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/1759",16,22)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/2069",16,23)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/20091",16,24)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/20608",16,25)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/21056",16,26)

