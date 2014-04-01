class Species < ActiveRecord::Base
  has_many :sightings
  has_many :regions, through: :sightings
  validates :name, presence: true
end
