class Region < ActiveRecord::Base
  has_many :sightings
  has_many :species, through: :sightings
  validates :name, presence: true
end
