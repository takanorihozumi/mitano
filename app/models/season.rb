class Season < ApplicationRecord
  belongs_to :drama
  has_many :episodes
end
