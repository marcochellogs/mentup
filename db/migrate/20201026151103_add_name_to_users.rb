class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :string
    add_column :users, :is_mentor, :boolean, default: false
  end
end
