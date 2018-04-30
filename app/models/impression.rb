class Impression < ApplicationRecord
  belongs_to :user

  #必須項目
  validates :title, presence: true
  validates :season, presence: true
  validates :episode, presence: true
end
