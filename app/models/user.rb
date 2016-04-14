class User < ActiveRecord::Base
  has_secure_password
  has_many :posts
  has_many :wines, :through => :posts
  validates :email, uniqueness: true
end
