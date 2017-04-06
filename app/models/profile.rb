class Profile < ApplicationRecord

  belongs_to :user, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :kids, dependent: :destroy
  has_many :attendances, dependent: :destroy

  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :street_name, presence: true, on: :update
  validates :street_number, presence: true, on: :update
  validates :zipcode, presence: true, on: :update
  validates :city, presence: true, on: :update
  validates :country, presence: true, on: :update
  validates :gender, presence: true, inclusion: {in: ["female", "male", "prefer not to say"], allow_nil: false}, on: :update
  validates :pregnant, presence: true, on: :update
  mount_uploader :photo, PhotoUploader
  acts_as_taggable
  acts_as_taggable_on :interests
end
