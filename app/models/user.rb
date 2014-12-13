class User < ActiveRecord::Base

  after_create :signup_confirmation

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  has_many :tours
  has_many :amenities, through: :tours

  def signup_confirmation
    UserMailer.signup_confirmation(self).deliver
  end

end