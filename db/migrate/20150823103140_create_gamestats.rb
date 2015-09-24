class CreateGamestats < ActiveRecord::Migration
  def change
    create_table :gamestats do |t|
      t.string :name
      t.references :game, index: true, foreign_key: true
      t.references :player, index: true, foreign_key: true
      t.integer :sixm_g
      t.integer :sixm_n
      t.integer :wing_g
      t.integer :wing_n
      t.integer :ninem_g
      t.integer :ninem_n
      t.integer :sevenm_g
      t.integer :sevenm_n
      t.integer :FB_n
      t.integer :BT_g
      t.integer :BT_n
      t.integer :AS_n
      t.integer :TF_n
      t.integer :ST_n
      t.integer :BS_n
      t.integer :YC_n
      t.integer :twoMin_n
      t.integer :RC_n
      t.integer :DR_n

      t.timestamps null: false
    end
  end
end
