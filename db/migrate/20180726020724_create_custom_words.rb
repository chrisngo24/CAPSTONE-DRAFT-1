class CreateCustomWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :wordnik_api_id
      t.string :word
      t.text :definition
      t.integer :user_id

      t.timestamps
    end
  end
end
