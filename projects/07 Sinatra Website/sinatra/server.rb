require 'sinatra'
require 'faker'

#faker variables
person_name = Faker::Name.name
person_email = Faker::Internet.email
person_company = Faker::Company.name
person_company_slogan = Faker::Company.bs
person_phone = Faker::PhoneNumber.phone_number
person_address = Faker::Address.street_address
person_city = Faker::Address.city
person_state = Faker::Address.state
person_zip = Faker::Address.zip_code
avatar = Faker::Avatar.image

# The basis of any website. Get the root file..
get '/' do
	"This is the root action!"
end

get '/index'  do
	@supermarket = [
		{name: Faker::Name.name, city: Faker::Address.city, state: Faker::Address.state, avatar: Faker::Avatar.image(Faker::Name.name)},
	]
	erb :supermarket, layout: :index
end

# Run this file in the terminal. Go to localhost:(whateverserver)(whatever base location)
#ex: localhost:4567/index

get '/supermarket' do
	@supermarket = [
		{name: Faker::Name.name, city: Faker::Address.city, state: Faker::Address.state, avatar: Faker::Avatar.image(Faker::Name.name)},
	]
	erb :supermarket, layout: :index
end

get '/driving' do
	@driving = [
		{name: Faker::Name.name, city: Faker::Address.city, state: Faker::Address.state, avatar: Faker::Avatar.image(Faker::Name.name)},
	]
	erb :driving, layout: :index
end

get '/gym' do
	@gym = [
		{name: Faker::Name.name, city: Faker::Address.city, state: Faker::Address.state, avatar: Faker::Avatar.image(Faker::Name.name)},
	]
	erb :gym, layout: :index
end