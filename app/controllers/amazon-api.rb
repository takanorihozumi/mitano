# #! /usr/bin/ruby
# # coding: UTF-8

# require 'rubygems'
# require 'amazon/ecs'

# #  Amazon::Ecs.debug = true

# Amazon::Ecs.options = {
#   :associate_tag => "takanori501-22",
#     :AWS_access_key_id => "AKIAI5NY2QDECRNXCTXQ",
#     :AWS_secret_key => "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"
# }

# # res = Amazon::Ecs.item_search('ゲームオブスローンズ ', {:item_id => 'B07CGZ3YNP', :response_group => 'Medium,ItemAttributes,Images', :country => 'jp'})
#   # res = ::Amazon::Ecs.item_lookup("B07CGZ3YNP", country: 'jp', response_group: 'Large,ItemAttributes,Images')
#   # ウォーキング・デッド
#    # res = ::Amazon::Ecs.item_lookup("B07659TGS5", country: 'jp', response_group: 'Large,ItemAttributes,Images')
#   # 24
#   # res = ::Amazon::Ecs.item_lookup("B01A1BY4HC", country: 'jp', response_group: 'Large,ItemAttributes,Images')
#   # ゴシップガール
#   # res = ::Amazon::Ecs.item_lookup("B002M3UEOA", country: 'jp', response_group: 'Large,ItemAttributes,Images')
#   # シカゴ・ファイア
#   # res = ::Amazon::Ecs.item_lookup("B07CH52Y94", country: 'jp', response_group: 'Large,ItemAttributes,Images')
#   # マジシャンズ
#   # res = ::Amazon::Ecs.item_lookup("B079TN5PR8", country: 'jp', response_group: 'Large,ItemAttributes,Images')
#   # グリム
#   # res = ::Amazon::Ecs.item_lookup("B07261KV5B", country: 'jp', response_group: 'Large,ItemAttributes,Images')
#   # ブレイキング・バッド
#   # res = ::Amazon::Ecs.item_lookup("B00KYIN73K", country: 'jp', response_group: 'Large,ItemAttributes,Images')
#   # ザ・フォロイング
#   res = ::Amazon::Ecs.item_lookup("B00R705PD8", country: 'jp', response_group: 'Large,ItemAttributes,Images')


# res.items.each do |item|

#   puts item.get_element('ItemAttributes')

#   #階層が下のものも取得できる
#   puts "Title:#{item.get('ItemAttributes/Title')}"
#   puts "Author:#{item.get('ItemAttributes/Author')}"

#   # 画像のurlとサイズをhashで取得
#   puts item.get_hash('SmallImage')
# end