class CreateCustomWords < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_words do |t|
      t.string :word
      t.text :definition
      t.integer :user_id

      t.timestamps
    end
  end
end
