class EmployeeProfile < ActiveRecord::Base
  attr_accessible :name,
                  :height,
                  :age,
                  :favorite_food,
                  :favorite_day,
                  :salary,
                  :photo_url,
                  :employee_id

  validates :name, presence: true
  validates :favorite_day, inclusion: {in: Date::DAYNAMES},
            allow_nil: true

  belongs_to :employee, inverse_of: :employee_profile
end
