class CreateAwkins < ActiveRecord::Migration
  def change
    create_table :awkins do |t|
      t.integer :total
      t.datetime :date
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
