class CreateEmployees < ActiveRecord::Migration[8.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :last_name
      t.string :position
      t.string :account_number

      t.timestamps
    end
  end
end
