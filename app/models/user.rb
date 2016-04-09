class User < ActiveRecord::Base
  has_many :movies
  validates :username, presence: true
  has_secure_password
end
