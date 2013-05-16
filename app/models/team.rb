class Team < ActiveRecord::Base
  attr_accessible :supervisor_id, :name, :employee_ids

  validates :name, presence: true

  belongs_to :supervisor, class_name: "Employee", inverse_of: :teams

  has_many :team_memberships
  has_many :members, through: :team_memberships, source: :employee
end