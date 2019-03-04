class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.references :location, foreign_key: true
      
      t.timestamps
    end
  end
end
