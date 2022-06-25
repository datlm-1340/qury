class CreateStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :statuses do |t|
      t.string  :name, null: false
      t.integer :project_id, null: false

      t.timestamps
    end
    add_index :statuses, :project_id
  end
end
