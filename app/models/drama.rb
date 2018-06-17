class Drama < ApplicationRecord
  # drama.seasonsのように取得できるようになる
  has_many :seasons
  has_many :drama_cast_relations
  has_many :casts, through: :drama_cast_relations

end
