class Comment < ApplicationRecord
  validates :text, presence: true
  belongs_to :idiom
  belongs_to :user
end
