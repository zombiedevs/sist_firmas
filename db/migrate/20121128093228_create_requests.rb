class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :titulo
      t.text :descripcion
      t.integer :request_type_id
      t.integer :fund_id

      t.timestamps
    end
  end
end
