class ChangeColumnNameEggs < ActiveRecord::Migration[6.0]
  def change
    rename_column :eggs, :egg, :egg_description
  end
end
