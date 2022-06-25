class CreateCustomFields < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_fields do |t|
      t.string  :name, null: false
      t.integer :project_id, null: false

      t.timestamps
    end
    add_index :custom_fields, :project_id
  end
end
