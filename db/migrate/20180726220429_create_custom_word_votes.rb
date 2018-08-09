class CreateCustomWordVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :word_votes do |t|
      t.integer :user_id
      t.integer :word_id
      t.integer :value

      t.timestamps
    end
  end
end
