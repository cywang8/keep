class AddFullNameToJournalEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :journal_entries, :full_name, :string
    remove_column :journal_entries, :friend_first_name
    remove_column :journal_entries, :friend_last_name
  end
end
