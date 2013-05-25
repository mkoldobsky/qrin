class AddGenerationToAwkin < ActiveRecord::Migration
  def change
    add_column :awkins, :generation, :string
  end
end
