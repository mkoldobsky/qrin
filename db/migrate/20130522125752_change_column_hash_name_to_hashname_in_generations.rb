class ChangeColumnHashNameToHashnameInGenerations < ActiveRecord::Migration
  def up
  	remove_column :generations, :hash_name
  	add_column :generations, :hashname, :string
  end

  def down
  	remove_column :generations, :hashname

  	add_column  :generations, :hash_name, :string
  end
end
