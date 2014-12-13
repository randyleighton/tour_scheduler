class User < ActiveRecord::Base

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  has_many :tours

end