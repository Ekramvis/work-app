class EmployeeProfileTable < ActiveRecord::Migration
  def change
    create_table :employee_profiles do |t|
      t.string :name
      t.integer :height
      t.integer :age
      t.string :favorite_food
      t.string :favorite_day
      t.integer :salary
      t.string :photo_url
      t.integer :employee_id

      t.timestamps
    end
  end
end
