class User < ActiveRecord::Base

  has_many :recipes
  has_many :bookmarks

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 5 }
  
end