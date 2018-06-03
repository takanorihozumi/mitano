class ScrapingFox
 def self.execute(url,count,id)
  # target = 13
  agent = Mechanize.new
  page = agent.get(url)
  titles = page.search('.my-c')
  contents = page.search('.box-text')
  count.times do |i|
    zenkaku = i.to_s
    del1 =titles[i].inner_text.delete('第#{zenkaku}話')
    title = del1.delete(zenkaku).delete("0").delete("1").delete("2").delete("3").delete("4").delete("5").delete("6").delete("7").delete("8").delete("9").strip
    content= contents[i].inner_text.strip
    Episode.create(episode_name: title,episode_no:i+1, over_view: content, season_id: id,source_url:url)
  end
end
end

# foxはurlのidが連番ではないので以下の対応が必要
# 1.url探す(ググる) 2.episode数 season_id

# ウォーキング・デッド
ScrapingFox.execute("http://tv.foxjapan.com/fse/program/episode/index/prgm_id/20806",13,185)
ScrapingFox.execute("http://tv.foxjapan.com/fse/program/episode/index/prgm_id/21206",13,186)
