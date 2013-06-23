class RemoveTotalFromAwkin < ActiveRecord::Migration
  def up
  	remove_column :awkins, :total
  end

  def down
  end
end
