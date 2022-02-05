class AddFieldsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :online, :boolean
    add_column :events, :location, :string
  end
end
