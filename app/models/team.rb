class Team < ActiveRecord::Base
  attr_accessible :supervisor_id, :name

  validates :name, presence: true

  belongs_to :supervisor, class_name: "Employee"

  has_many :team_memberships
  has_many :members, through: :team_memberships, source: :employee
end