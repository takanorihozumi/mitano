class Entry < ApplicationRecord
  belongs_to :feed
  has_many :entry_categories, dependent: :destroy
end
