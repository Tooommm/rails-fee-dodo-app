class AddAttributesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :child_name, :string
    add_column :users, :phone, :string
    add_column :users, :sleep_objective, :integer
  end
end
