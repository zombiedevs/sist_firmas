class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :numero
      t.integer :rol_id

      t.timestamps
    end
  end
end
