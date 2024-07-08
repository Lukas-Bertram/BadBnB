class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :check_in, presence: true
  validates :check_in, presence: true
end
