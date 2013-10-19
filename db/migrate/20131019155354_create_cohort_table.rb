class CreateCohortTable < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.timestamps
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
    end
  end
end
