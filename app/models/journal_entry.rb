class JournalEntry < ApplicationRecord
  belongs_to :friend, :class_name => "FriendsAndFamily", :foreign_key => "friend_id"
  belongs_to :user
  belongs_to :birthday, :class_name => "FriendsAndFamily", :foreign_key => "friend_id"
  validates :date_of_link, :presence => true
  validates :type_of_link, :presence => true
  validates :friend_id, :presence => true
  validates :reason, :presence => true
end
