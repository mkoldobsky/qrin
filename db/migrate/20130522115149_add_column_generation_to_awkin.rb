class AddColumnGenerationToAwkin < ActiveRecord::Migration
  def change
  	add_column :awkins, :generation_id, :integer
  end
end
