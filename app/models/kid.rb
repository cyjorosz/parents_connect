class Kid < ApplicationRecord
  belongs_to :profile
  validates :date_of_birth, presence: true


  def age(date_of_birth)
    now = Time.now.utc.to_date
    age_in_years = now.year - date_of_birth.year - ((now.month > date_of_birth.month || (now.month == date_of_birth.month && now.day >= date_of_birth.day)) ? 0 : 1)
    age_in_days = (now - date_of_birth).to_i
    if age_in_years >= 2
      return "#{age_in_years} years"
    elsif age_in_days < 31
      "newborn"
    else
      "#{(age_in_days/30.4).to_i} months"

  end
end

end
