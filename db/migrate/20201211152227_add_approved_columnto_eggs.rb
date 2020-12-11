class AddApprovedColumntoEggs < ActiveRecord::Migration[6.0]
  def change
    add_column :eggs, :approved, :boolean, default: false
  end
end
