class Department < ApplicationRecord
  validates :name, presence: true, uniqueness: true


  has_many :department_employees
  has_many :employees, through: :department_employees
end
