class AddIdsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :cohort_id, :integer
    add_column :students, :mentor_id, :integer
  end
end
