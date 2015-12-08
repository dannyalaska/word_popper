class User < ActiveRecord::Base
  has_many :lines
  validates :username, presence: true, length: {maximum: 50}, uniqueness: true
  has_secure_password
  validates :password, presence: true
end
