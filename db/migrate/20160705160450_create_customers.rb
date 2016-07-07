class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.float :lat
      t.float :lng

      t.timestamps null: false
    end
  end
end
