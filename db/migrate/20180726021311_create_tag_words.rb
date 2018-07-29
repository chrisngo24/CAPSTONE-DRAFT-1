class CreateTagWords < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_words do |t|
      t.integer :custom_word_id
      t.integer :tag_id
      t.integer :user_id

      t.timestamps
    end
  end
end
