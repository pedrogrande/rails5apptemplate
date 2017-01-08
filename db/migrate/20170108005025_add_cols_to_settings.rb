class AddColsToSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :author_name, :string
    add_column :settings, :author_image, :string
    add_column :settings, :instagram, :string
  end
end
