class AddTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :doc_type, :string
  end
end
