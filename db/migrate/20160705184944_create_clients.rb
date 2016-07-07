class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :ip_address
      t.string :user_agent
      t.boolean :ssl

      t.timestamps null: false
    end
  end
end
