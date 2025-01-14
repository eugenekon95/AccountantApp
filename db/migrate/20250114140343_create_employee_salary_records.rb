class CreateEmployeeSalaryRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :employee_salary_records do |t|
      t.references :employee, null: false, foreign_key: true
      t.decimal :salary
      t.date :paid_on
      t.timestamps
    end
  end
end
