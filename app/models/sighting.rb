class Sighting < ActiveRecord::Base
  belongs_to :species
  belongs_to :region
  validates :datetime, presence: true
  validates :region_id, presence: true
end
