class Episode < ApplicationRecord
  belongs_to :season, counter_cache: true
end
