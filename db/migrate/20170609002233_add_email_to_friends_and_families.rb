class AddEmailToFriendsAndFamilies < ActiveRecord::Migration[5.0]
  def change
    add_column :friends_and_families, :email, :string
  end
end
