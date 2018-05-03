class Drama < ApplicationRecord
  # drama.seasonsのように取得できるようになる
  has_many :seasons
end
