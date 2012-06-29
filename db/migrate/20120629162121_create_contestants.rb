class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :name
      t.references :contest

      t.timestamps
    end
    add_index :contestants, :contest_id
  end
end
