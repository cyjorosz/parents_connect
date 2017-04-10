class Profile < ApplicationRecord

  belongs_to :user, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :kids, dependent: :destroy
  has_many :attendances, dependent: :destroy
  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :street_name, presence: true, on: :update
  validates :zipcode, presence: true, on: :update
  validates :city, presence: true, on: :update
  validates :country, presence: true, on: :update
  validates :gender, presence: true, inclusion: {in: ["female", "male", "prefer not to say"], allow_nil: false}, on: :update
  mount_uploader :photo, PhotoUploader
  acts_as_taggable
  acts_as_taggable_on :interests

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  def full_address
    "#{street_number} #{street_name}, #{zipcode}, #{city} #{country}"
  end

  def full_address_changed?
    street_number_changed? || street_name_changed? || zipcode_changed? || city_changed? || country_changed?
  end

  # def profiles_in_5k_radius
  #   self.near([:latitude, :longitude], 5)
  # end

end
