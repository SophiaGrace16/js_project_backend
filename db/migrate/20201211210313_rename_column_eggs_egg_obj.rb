class RenameColumnEggsEggObj < ActiveRecord::Migration[6.0]
  def change
    rename_column :eggs, :egg_description, :egg_description
  end
end
