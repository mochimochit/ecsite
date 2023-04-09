class AddColumnsToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :name, :string
    add_column :items, :detail, :string
    add_column :items, :price, :integer
    add_column :items, :user_id, :integer
  end
end
