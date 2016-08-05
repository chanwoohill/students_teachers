class Teacher < ActiveRecord::Base
  
  has_many :students

  validates :email, uniqueness: true
  validates :hire_date, :retirement_date, presence: true
  validate :hired_before_retired

  def hired_before_retired
    if retirement_date < hire_date
      errors[:retirement_date, "You can't work after you retire."]
    elsif retirement_date > Date.today
      errors[:retirement_date, "Your retirement date is in the future."]
    end
  end

  def teacher_loses_students
    if teacher.retirement_date <= Date.today
      Student.teacher_id = nil 
    end
  end

end
