class ChangeNameToHashColumnInGeneration < ActiveRecord::Migration
  def up
  	remove_column :generations, :hash
  	add_column :generations, :hash_name, :string
  end

  def down
  end
end
