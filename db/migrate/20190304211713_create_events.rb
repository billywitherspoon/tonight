class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :line_length
      t.integer :entry_cost 
      t.datetime :start_time 
      t.references :venue, foreign_key: true

      t.timestamps
    end
  end
end
