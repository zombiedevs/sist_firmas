class UsersHaveAndBelongToManyRols < ActiveRecord::Migration
  def self.up
    create_table :rols_users, :id => false do |t|
      t.references :rol, :user
    end
  end

  def self.down
    drop_table :rols_users
  end
end