class CreateRequestTypes < ActiveRecord::Migration
  def change
    create_table :request_types do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
