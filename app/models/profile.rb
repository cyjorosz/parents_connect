class Profile < ApplicationRecord

  belongs_to :user, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :kids, dependent: :destroy
  has_many :attendances, dependent: :destroy

  validates :user_id, presence: true

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

  has_many :conversations, :foreign_key => :sender_id

  geocoded_by :full_address
  after_validation :geocode, if: :street_name_changed?

  def full_address
    "#{street_name}, #{zipcode}, #{city} #{country}"
  end

  def profiles_near_me
    profiles = Profile.near([self.latitude, self.longitude], 5, units: :km, :order => false).where.not(id: self.id)
  end

  def attending
    Attendance.where(profile: self)
  end
end

