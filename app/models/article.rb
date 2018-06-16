class Article < ApplicationRecord
  has_many :article_contents, dependent: :destroy
  # validates :title, presence: true
  # validates :image, presence: true
  # validates :heading, presence: true
  # validates :trailer, presence: true

end
