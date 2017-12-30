class AddLatLong < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :lat, :integer
    add_column :people, :long, :integer
  end
end
