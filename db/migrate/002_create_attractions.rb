class CreateAttractions < ActiveRecord::Migration[5.0]
  def change
    create_table :attractions do |t|
      t.string :name 
      t.integer :happiness_rating
      t.integer :nausea_rating
      t.integer :min_height 
      t.integer :tickets 
    end
  end
end