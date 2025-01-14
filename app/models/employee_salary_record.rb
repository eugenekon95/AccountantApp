class EmployeeSalaryRecord < ApplicationRecord
  belongs_to :employee
  validates :salary, presence: true, numericality: { greater_than: 0 }
  validates :paid_on, presence: true
end
