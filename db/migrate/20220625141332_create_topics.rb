class CreateTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :topics do |t|
      t.string   :title, null: false
      t.text     :content, null: false
      t.integer  :priority, null: false, default: 1
      t.datetime :start_date
      t.datetime :due_date
      t.integer  :group_id
      t.integer  :category_id, null: false
      t.integer  :creator_id, null: false
      t.integer  :assignee_id, null: false
      t.integer  :status_id, null: false

      t.timestamps
    end
    add_index :topics, :group_id
    add_index :topics, :category_id
    add_index :topics, :creator_id
    add_index :topics, :assignee_id
    add_index :topics, :status_id
  end
end
