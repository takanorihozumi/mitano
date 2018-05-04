class Season < ApplicationRecord
  belongs_to :drama, counter_cache: true
  has_many :episodes
end
