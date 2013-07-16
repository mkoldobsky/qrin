class AddRequestToAwkin < ActiveRecord::Migration
  def change
  	add_column :awkins, :request, :string
  end
end
