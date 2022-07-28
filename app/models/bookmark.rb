class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, :list_id, presence: true
end
