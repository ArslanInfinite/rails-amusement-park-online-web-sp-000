class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name 
      t.string :password_digest
      t.integer :happiness 
      t.integer :nausea 
      t.integer :height 
      t.integer :tickets 
      t.boolean :admin, null: false, default: false
    end
  end
end
