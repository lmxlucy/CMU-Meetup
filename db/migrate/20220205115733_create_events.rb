class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.time :date
      t.integer :limit
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
