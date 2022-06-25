class CreateCustomFieldOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_field_options do |t|
      t.string  :name, null: false
      t.boolean :is_default, default: false
      t.integer :custom_field_id, null: false

      t.timestamps
    end
    add_index :custom_field_options, :custom_field_id
  end
end
