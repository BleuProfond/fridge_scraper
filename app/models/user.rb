class User < ActiveRecord::Base

  has_many :recipes

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true, length: { minimum: 5 }
  
end