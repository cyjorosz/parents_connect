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

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  def full_address
    byebug
    "#{street_number} #{street_name}, #{zipcode}, #{city} #{country}"
  end

  def full_address_changed?
    street_number_changed? || street_name_changed? || zipcode_changed? || city_changed? || country_changed?
  end

end
