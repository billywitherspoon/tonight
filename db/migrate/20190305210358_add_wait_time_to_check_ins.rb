class AddWaitTimeToCheckIns < ActiveRecord::Migration[5.2]
  def change
    add_column :check_ins, :wait_time, :integer
  end
end
