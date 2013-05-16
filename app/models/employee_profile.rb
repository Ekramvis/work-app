class EmployeeProfile < ActiveRecord::Base
  attr_accessible :name,
                  :height,
                  :age,
                  :favorite_food,
                  :favorite_day,
                  :salary,
                  :photo_url,
                  :employee_id,
                  :picture

  has_attached_file :picture, :styles => {
    :big => "600x600>",
    :small => "50x50#"
  }

  validates :name, presence: true
  validates :favorite_day, inclusion: {in: Date::DAYNAMES},
            allow_nil: true

  belongs_to :employee, inverse_of: :employee_profile
end
