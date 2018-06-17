class DramaCastRelation < ApplicationRecord
  belongs_to :drama
  belongs_to :cast
end
