class CreateJudges < ActiveRecord::Migration
  def change
    create_table :judges do |t|
      t.string :name
      t.references :contest

      t.timestamps
    end
    add_index :judges, :contest_id
  end
end
