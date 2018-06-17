class Cast < ApplicationRecord
  has_many :drama_cast_relations
  has_many :dramas, through: :drama_cast_relations
end
