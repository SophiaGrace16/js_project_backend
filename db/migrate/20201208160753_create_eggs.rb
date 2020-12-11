class CreateEggs < ActiveRecord::Migration[6.0]
  def change
    create_table :eggs do |t|
      t.string :egg_movie
      t.string :egg
      t.string :image
      t.boolean :approved, default: false
      t.belongs_to :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
