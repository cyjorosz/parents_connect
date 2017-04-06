class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :profile

  validates :event_id, uniqueness: {scope: :profile_id}



end

