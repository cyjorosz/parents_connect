class Kid < ApplicationRecord
  belongs_to :profile
  validates :date_of_birth, presence: true
end
