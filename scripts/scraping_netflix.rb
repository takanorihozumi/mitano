class ScrapingFox
 def self.execute(url,total_episode)
  season = 1
  season_id =87
  # target = 13
  agent = Mechanize.new
  agent.user_agent_alias = "Windows Mozilla"
  page = agent.get(url)
  titles = page.search('.ttl-epi-item__name')
  contents = page.search('.ttl-epi-item__icons')
  total_episode.times do |i|
    zenkaku = i.to_s
    del1 =titles[i].inner_text.delete('第#{zenkaku}話')
    puts title = del1.delete(zenkaku).delete(". 0").delete("1").delete("2").delete("3").delete("4").delete("5").delete("6").delete("7").delete("8").delete("9").strip
    puts content= contents[i].inner_text.strip

    # Episode.create(episode_name: title,episode_no:i+1, over_view: content, season_id: season_id, source_url: url)
  end
end
end

# foxはurlのidが連番ではないので以下の対応が必要
# 1.全シーズンのエピソード数を指定(シーズンファイナルから順に登録)

# ザ・フォロイング
ScrapingFox.execute("https://video.unext.jp/title/SID0003983",22)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/1498",16,21)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/1759",16,22)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/2069",16,23)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/20091",16,24)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/20608",16,25)
# ScrapingFox.execute("http://tv.foxjapan.com/fox/program/episode/index/prgm_id/21056",16,26)

