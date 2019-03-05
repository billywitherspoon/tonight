class RemoveLineLengthFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :line_length, :integer
  end
end
