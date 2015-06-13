class CreateSubSections < ActiveRecord::Migration
  def change
    create_table :sub_sections do |t|
      t.integer :section_id
      t.string :name

      t.timestamps
    end
    add_index :sub_sections, :section_id
  end
end
