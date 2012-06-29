class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :name
      t.references :contest

      t.timestamps
    end
    add_index :rounds, :contest_id
  end
end
