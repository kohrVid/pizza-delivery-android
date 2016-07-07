class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.boolean :awesome
      t.boolean :so_so
      t.boolean :creeped_out
      t.boolean :morally_outraged
      t.boolean :hungry

      t.timestamps null: false
    end
  end
end
