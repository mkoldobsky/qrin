class AddNameColumnToGeneration < ActiveRecord::Migration
  def change
  	add_column :generations, :name, :string
  end
end
