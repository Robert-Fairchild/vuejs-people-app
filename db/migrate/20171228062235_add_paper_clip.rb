class AddPaperClip < ActiveRecord::Migration[5.1]
  def change
    add_attachment :people, :image
  end
end
