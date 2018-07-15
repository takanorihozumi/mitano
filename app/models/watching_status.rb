class WatchingStatus < ApplicationRecord
  belongs_to :user
  belongs_to :drama
  belongs_to :season
  belongs_to :episode
  validates :user_id, presence: true
end
