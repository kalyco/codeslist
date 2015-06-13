class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id, null: false
      t.integer :section_id, null: false
      t.string :title, null: false
      t.text :description, null: false

      t.timestamps
    end
    add_index :posts, :user_id
    add_index :posts, :section_id
  end
end
