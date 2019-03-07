class AddActiveToCheckIns < ActiveRecord::Migration[5.2]
  def change
    add_column :check_ins, :active, :boolean
  end
end
