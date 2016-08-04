class Student < ActiveRecord::Base
  # implement your Student model here
  belongs_to :teacher

  validates :email, uniqueness: true,
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validate :filter_toddlers 

  def name
    "#{first_name} #{last_name}"
  end

  def age
    now = Date.today
    age = now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end


  def filter_toddlers
    if age <= 3
      errors.add(:birthdate, 'You must be 3 years or older.')
    end
  end



end
