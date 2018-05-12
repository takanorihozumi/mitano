class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :impression
  counter_culture :impression
  validates :content, presence: true
  validates :user_id, presence: true
  validates :impression_id, presence: true
end
