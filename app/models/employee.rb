class Employee < ActiveRecord::Base
  attr_accessible :supervisor_id, :team_ids

  has_many :subordinates, class_name: "Employee",
           foreign_key: :supervisor_id
  belongs_to :supervisor, class_name: "Employee"

  has_many :team_memberships
  has_many :teams, through: :team_memberships
  has_many :supervised_teams, class_name: "Team",
           foreign_key: :supervisor_id, inverse_of: :supervisor

  has_one :employee_profile, inverse_of: :employee
end