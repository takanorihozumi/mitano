class Episode < ApplicationRecord
  belongs_to :season, counter_cache: true
  has_many :impressions
end
