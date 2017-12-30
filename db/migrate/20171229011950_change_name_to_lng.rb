class ChangeNameToLng < ActiveRecord::Migration[5.1]
  def change
    rename_column :people, :long, :lng
  end
end
