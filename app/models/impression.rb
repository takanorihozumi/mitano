class Impression < ApplicationRecord
  belongs_to :user
  belongs_to :drama
  belongs_to :season
  belongs_to :episode
  has_many :likes, dependent: :destroy
  validates :impression, presence: true
  has_many :like_users, through: :likes, source: :user

  def add_like(user)
    likes.create(user_id: user.id)  
  end

  def delete_like(user)
    likes.find_by(user_id: user.id).destroy
  end

  def like?(user)
    like_users.include?(user)
  end
end
