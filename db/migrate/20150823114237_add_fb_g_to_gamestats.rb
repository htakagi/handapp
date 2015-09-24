class AddFbGToGamestats < ActiveRecord::Migration
  def change
    add_column :gamestats, :FB_g, :integer
  end
end
