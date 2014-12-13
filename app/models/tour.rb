class Tour < ActiveRecord::Base

  has_many :amenities
  belongs_to :user
  validates :tour_date, presence: true

end