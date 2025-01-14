class Employee < ApplicationRecord
  has_many :department_employees
  has_many :departments, through: :department_employees
  has_many :employee_salary_records, dependent: :destroy

  validates :name, :last_name, :position, :account_number, presence: true
end
