class CreateCommentVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_votes do |t|
      t.integer :user_id
      t.integer :comment_id
      t.integer :value

      t.timestamps
    end
  end
end
