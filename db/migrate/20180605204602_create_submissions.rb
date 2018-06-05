class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.text :title
      t.integer :org_id

      t.timestamps
    end
  end
end
