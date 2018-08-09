class CreateCustomDefinitions < ActiveRecord::Migration[5.2]
  def change
    create_table :definitions do |t|
      t.integer :word_id
      t.integer :user_id
      t.text :definition

      t.timestamps
    end
  end
end
