class CreatePracticestats < ActiveRecord::Migration
  def change
    create_table :practicestats do |t|
      t.references :practice, index: true, foreign_key: true
      t.references :player, index: true, foreign_key: true
      t.integer :goal
      t.integer :nogoal
      t.integer :passmiss
      t.integer :catchmiss

      t.timestamps null: false
    end
  end
end
