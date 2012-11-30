class AddCommitToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :commit, :text
  end
end
