class AddColumntoEggs < ActiveRecord::Migration[6.0]
  def change
    add_column :eggs, :found_count, :integer, default: 0
  end
end
