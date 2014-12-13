class Amenity < ActiveRecord::Base

belongs_to :tour
validates :description, presence: true

end