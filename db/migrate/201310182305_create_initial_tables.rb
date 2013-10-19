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

    create_table :instructors do |t|
      t.string :name
      t.string :email
    end

    create_table :mentors do |t|
      t.string :name
      t.string :email
    end

    create_table :students do |t|
      t.string :name
      t.string :email
    end
  end


end