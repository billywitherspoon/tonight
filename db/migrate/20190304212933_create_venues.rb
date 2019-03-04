class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.location_id :integer

      t.timestamps
    end
  end
end
