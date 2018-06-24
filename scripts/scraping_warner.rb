class ScrapingWarner
  # heroku run rails runner scripts/scraping_warner.rb
 def self.execute(url,total_episode)
  season = 7
  season_id =203
  episode_no =1
  agent = Mechanize.new
  page = agent.get(url)
  titles = page.search('.ttl')
  contents = page.search('.txt')
  total_episode.times do |i|
    zenkaku = i.to_s
    del1 =titles[i].inner_text.delete('第#{zenkaku}話').delete("a-z").delete("A-Z")
    puts title = del1.delete(zenkaku).delete("0").delete("1").delete("2").delete("3").delete("4").delete("5").delete("6").delete("7").delete("8").delete("9").strip
    puts content= contents[i].inner_text.strip
    # if i+1 == 22 then
    #   puts season = 6
    #   puts season_id = 168
    #   episode_no =1
    # elsif i+1 == 37 then
    #   puts season = 5
    #   puts season_id = 167
    #   episode_no =1
    # elsif i+1 == 52 then
    #   puts season = 4
    #   puts season_id = 166
    #   episode_no =1
    # elsif i+1 == 67 then
    #   puts season = 3
    #   puts season_id = 165
    #   episode_no =1
    # elsif i+1 == 81 then
    #   puts season = 2
    #   puts season_id = 164
    #   episode_no =1
    # elsif i+1 == 95 then
    #   puts season = 1
    #   puts season_id = 163
    #   episode_no =1
    # end
    Episode.create(episode_name: del1,episode_no:episode_no, over_view: content, season_id: season_id, source_url: url)
    episode_no = episode_no+1
  end
end
end

# foxはurlのidが連番ではないので以下の対応が必要
# 1.全シーズンのエピソード数を指定(シーズンファイナルから順に登録)
ScrapingWarner.execute("http://wwws.warnerbros.co.jp/kaidora/truedetective/ep.php",8)

