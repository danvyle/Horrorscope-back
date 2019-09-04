class User < ApplicationRecord
  has_secure_password
  belongs_to :sign
  validates :username, presence: true
  validates :username, uniqueness: true


end
