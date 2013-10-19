class CreateInitialTables < ActiveRecord::Migration

  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.timestamps
    end
    create_table :interactions do |t|
      t.datetime :date
      t.string :location
      t.boolean :confirmed
      t.timestamps
    end
  end


end