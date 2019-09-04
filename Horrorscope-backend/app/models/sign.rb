class Sign < ApplicationRecord
  has_many :users
  has_many :horoscopes
  has_many :retrogrades
end
