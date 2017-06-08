class CreateFriendsAndFamilies < ActiveRecord::Migration[5.0]
  def change
    create_table :friends_and_families do |t|
      t.string :first_name
      t.string :last_name
      t.string :relationship
      t.date :birthday
      t.string :current_city
      t.string :current_employer_or_school
      t.string :address
      t.string :picture
      t.string :phone_number

      t.timestamps

    end
  end
end
