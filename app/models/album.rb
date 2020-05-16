class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs, dependent: :destroy
  GENRES = ['Britpop', '90s', 'Mancunian', 'Madchester', 'Progressive', 'Punk']
  validates :name, presence: true
  validates :genre, inclusion: { in: GENRES }
end
