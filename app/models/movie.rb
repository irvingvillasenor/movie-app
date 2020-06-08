class Movie < ApplicationRecord

  validates :title, uniqueness: true, presence: true
  validates :director, presence: true, length: { minimum: 2 }

end