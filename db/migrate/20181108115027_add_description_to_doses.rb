class AddDescriptionToDoses < ActiveRecord::Migration[5.2]
  def change
    add_column :doses, :description, :text
  end
end
