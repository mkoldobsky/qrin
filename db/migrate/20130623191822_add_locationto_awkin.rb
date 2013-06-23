class AddLocationtoAwkin < ActiveRecord::Migration
  def up
  	add_column :awkins, :location_id, :integer
  end

  def down
  end
end
