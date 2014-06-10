class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string   "address"
      t.float    "latitude"
      t.float    "longitude"
      t.timestamps
      t.string   "city"
      t.string   "state"
      t.string   "zip_code"
    end

    create_table "profiles" do |t|
      t.integer  "user_id",                         null: false
      t.string   "location"
      t.text     "i_love"
      t.string   "find_me_in"
      t.string   "hometown"
      t.string   "website"
      t.string   "when_not_with_pet"
      t.string   "why_you_should_read_my_reviews"
      t.string   "second_favorite_website"
      t.string   "last_great_book_read"
      t.string   "my_first_concert"
      t.string   "my_favorite_movie"
      t.string   "my_last_meal"
      t.string   "my_secret"
      t.string   "my_recent_discovery"
      t.string   "my_pets"
      t.string   "my_favorite_breeds"
      t.string   "my_favorite_place_to_go_walking"
      t.string   "min_age"
      t.string   "max_age"
      t.string   "max_distance"
      t.text     "job"
      t.integer  "zip",                             null: false
      t.timestamps
    end
  end
end
