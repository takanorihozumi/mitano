class Impression < ApplicationRecord
  belongs_to :user
  belongs_to :drama
  belongs_to :season
  belongs_to :episode
  validates :impression, presence: true
end
