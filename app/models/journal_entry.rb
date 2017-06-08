class JournalEntry < ApplicationRecord
  belongs_to :friend, :class_name => "FriendsAndFamily"
  belongs_to :user
end
