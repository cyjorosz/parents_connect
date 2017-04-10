class Event < ApplicationRecord
  scope :upcoming, -> { where("start_date >= ?", Date.today) }

  belongs_to :profile
  has_many :attendances, dependent: :destroy
  validates :start_date, presence: true
  validates :start_time, presence: true
  validates :description, presence: true
  validates :street_name, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true
  validates :country, presence: true

  geocoded_by :full_address
  after_validation :geocode, if: :street_name_changed?

  def self.events_near_me(profile)
    self.near([profile.latitude, profile.longitude], 5, units: :km,  order: "start_date ASC, distance ASC")
  end

  def full_address
    "#{street_name}, #{zipcode}, #{city} #{country}"
  end

  def profile_attending?(attendances, current_profile_id)
    attendances.each do |attendance|
      return true if attendance[:profile_id] == current_profile_id
    end
    return false
  end
end



