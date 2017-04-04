class Interest < ApplicationRecord
  has_many :interest_links
  has_many :profiles, through: :interest_links

  validates :interest, presence: true
end
