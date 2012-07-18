class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text(:note_text)
      t.integer(:user_id)
      t.integer(:tweet_id)
      t.timestamps
    end
    add_index(:user_id,  null: false)
    add_index(:tweet_id, null: false)
  end
end

