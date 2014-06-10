class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :i_love
    remove_column :users, :find_me_in
    remove_column :users, :hometown
    remove_column :users, :website
    remove_column :users, :when_not_with_pet
    remove_column :users, :why_you_should_read_my_reviews
    remove_column :users, :second_favorite_website
    remove_column :users, :last_great_book_read
    remove_column :users, :my_first_concert
    remove_column :users, :my_favorite_movie
    remove_column :users, :my_last_meal
    remove_column :users, :my_secret
    remove_column :users, :my_recent_discovery
    remove_column :users, :my_pets
    remove_column :users, :my_favorite_breeds
    remove_column :users, :my_favorite_place_to_go_walking

  end
end
