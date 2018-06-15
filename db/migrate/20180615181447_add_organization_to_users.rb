class AddOrganizationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :organization, :string
  end
end
