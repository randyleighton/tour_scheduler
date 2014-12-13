class Tour < ActiveRecord::Base

  has_many :amenities
  validates :tour_date, presence: true

end