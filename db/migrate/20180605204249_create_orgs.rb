class CreateOrgs < ActiveRecord::Migration[5.1]
  def change
    create_table :orgs do |t|
      t.string :subdomain
      t.integer :user_id

      t.timestamps
    end
  end
end
