class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
