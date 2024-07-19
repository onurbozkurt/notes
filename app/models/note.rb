class Note < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_rich_text :content
end
