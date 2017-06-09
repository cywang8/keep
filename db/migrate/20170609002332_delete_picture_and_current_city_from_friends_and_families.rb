class DeletePictureAndCurrentCityFromFriendsAndFamilies < ActiveRecord::Migration[5.0]
  def change
    remove_column :friends_and_families, :picture
    remove_column :friends_and_families, :current_city
  end
end
