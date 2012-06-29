class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.references :judge
      t.references :contest
      t.references :contestant

      t.timestamps
    end
    add_index :scores, :judge_id
    add_index :scores, :contest_id
    add_index :scores, :contestant_id
  end
end
