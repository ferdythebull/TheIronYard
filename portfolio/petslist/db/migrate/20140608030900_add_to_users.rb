class AddToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_type, :string
    add_column :users, :nickname, :string
    add_column :users, :gender, :string
    add_column :users, :your_headline, :string
    add_column :users, :i_love, :text
    add_column :users, :find_me_in, :string
    add_column :users, :hometown, :string
    add_column :users, :website, :string
    add_column :users, :when_not_with_pet, :string
    add_column :users, :why_you_should_read_my_reviews, :string
    add_column :users, :second_favorite_website, :string
    add_column :users, :last_great_book_read, :string
    add_column :users, :my_first_concert, :string
    add_column :users, :my_favorite_movie, :string
    add_column :users, :my_last_meal, :string
    add_column :users, :my_secret, :string
    add_column :users, :my_recent_discovery, :string
    add_column :users, :my_pets, :string
    add_column :users, :my_favorite_breeds, :string
    add_column :users, :my_favorite_place_to_go_walking, :string
    add_column :users, :birthday, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
  
end
