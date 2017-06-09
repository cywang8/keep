class AddFullNameToFriendAndFamilies < ActiveRecord::Migration[5.0]
  def change
    add_column :friends_and_families, :name, :string
    remove_column :friends_and_families, :first_name
    remove_column :friends_and_families, :last_name
  end
end
