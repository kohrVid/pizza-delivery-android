class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.references :driver, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.boolean :is_beer

      t.timestamps null: false
    end
  end
end
