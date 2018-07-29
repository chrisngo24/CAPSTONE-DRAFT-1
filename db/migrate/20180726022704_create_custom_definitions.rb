class CreateCustomDefinitions < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_definitions do |t|
      t.integer :wordnik_api_id
      t.integer :user_id
      t.text :definition

      t.timestamps
    end
  end
end
