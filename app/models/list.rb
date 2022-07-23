class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true
  has_many :movies, through: :bookmarks
  # has_and_belongs_to_many :movies
  # has many reviews of the list!
  # review would have 1 list
end
