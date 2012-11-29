class AddEstadoToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :estado, :integer
  end
end
