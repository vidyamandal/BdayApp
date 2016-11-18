class ChangeAttendDatatype < ActiveRecord::Migration
  def change
	change_column :guests, :attend, :string
  end
end
