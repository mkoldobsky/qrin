class CreateGenerations < ActiveRecord::Migration
  def change
    create_table :generations do |t|
      t.string :hash

      t.timestamps
    end
  end
end
