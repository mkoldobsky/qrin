class RemoveGenerationcolumn < ActiveRecord::Migration
  def up
  	remove_column :awkins, :generation
  end

  def down
  	add_column :awkins, :generation, :string
  end
end
