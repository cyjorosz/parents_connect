class Event < ApplicationRecord
  belongs_to :profile
  has_many :attendances, dependent: :destroy
  validates :start_date, presence: true
  validates :description, presence: true
  validates :street_name, presence: true
  validates :street_number, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true
  validates :country, presence: true
end
