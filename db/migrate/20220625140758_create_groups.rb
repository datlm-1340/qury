class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string  :title, null: false
      t.text    :description
      t.integer :project_id, null: false
      t.integer :creator_id, null: false

      t.timestamps
    end
    add_index :groups, :project_id
    add_index :groups, :creator_id
  end
end
