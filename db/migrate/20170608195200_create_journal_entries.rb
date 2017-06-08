class CreateJournalEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :journal_entries do |t|
      t.date :date_of_link
      t.string :type_of_link
      t.string :friend_first_name
      t.string :friend_last_name
      t.string :reason
      t.text :notes
      t.integer :user_id
      t.integer :friend_id

      t.timestamps

    end
  end
end
