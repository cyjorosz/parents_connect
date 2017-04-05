class Interest < ApplicationRecord
  has_many :interest_links, dependent: :destroy
  has_many :profiles, through: :interest_links

  validates :interest, presence: true
end
