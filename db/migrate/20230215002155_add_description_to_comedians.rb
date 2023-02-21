class AddDescriptionToComedians < ActiveRecord::Migration[6.1]
  def change
    add_column :comedians, :description, :string
  end
end
