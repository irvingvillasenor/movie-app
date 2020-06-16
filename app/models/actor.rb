class Actor < ApplicationRecord

  validates :first_name, length: {minimum: 2}, presence: true
  validates :last_name, length: {minimum: 2}, presence: true
  validates :known_for, presence: true
  validates :age, numericality: {greater_than: 13}, presence: true

  belongs_to :movie
end
