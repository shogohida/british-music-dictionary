class Song < ApplicationRecord
  belongs_to :album
  validates :name, presence: true
  validates :minutes, inclusion: {in: LENGTH }
  validates :album, uniqueness: { scope: :artist }
end
