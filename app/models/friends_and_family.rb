class FriendsAndFamily < ApplicationRecord
  has_many :journal_entries, :class_name => "JournalEntry", :foreign_key => "friend_id", :dependent => :destroy
end
