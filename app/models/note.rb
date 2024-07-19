class Note < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  belongs_to :user

  has_rich_text :content
end
