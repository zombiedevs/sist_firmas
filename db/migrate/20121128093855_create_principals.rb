class CreatePrincipals < ActiveRecord::Migration
  def change
    create_table :principals do |t|
      t.integer :request_type_id
      t.integer :fund_id
      t.integer :lista

      t.timestamps
    end
  end
end
