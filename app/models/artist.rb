class Artist < ApplicationRecord
  has_many :albums
  has_many :songs, through: :albums
  YEARS = (1..70)
  validates :name, presence: true, uniqueness: true
  validates :years_active, inclusion: { in: YEARS }
end
