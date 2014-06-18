# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shelter1 = Shelter.create( name: 'Love Shelter', address: '510 Mill Street', city: 'Mount Pleasant', state: 'SC', zip_code: '29464', phone: '(843)469-9608', main_url: 'www.prestonbernstein.com')

shelter2 = Shelter.create(name: 'Grease Pit Kennel', address: '1600 Belle Point Drive', city: 'Mount Pleasant', state: 'SC', zip_code: '29464', phone: '(843)469-9608', main_url: 'www.prestonbernstein.com')

shelter3 = Shelter.create(name: 'We Love Animals', address: '3255 Highway 17 North', city: 'Mount Pleasant', state: 'SC', zip_code: '29466', phone: '(843)469-9608', main_url: 'www.prestonbernstein.com')

shelter4 = Shelter.create(name: 'Funny Joke Shelter', address: '1053 Rifle Range Road', city: 'Mount Pleasant', state: 'SC', zip_code: '29464', phone: '(843)469-9608', main_url: 'www.prestonbernstein.com')

shelter5 = Shelter.create(name: 'Love Will Tear Us Apart Shelter', address: '401 Johnnie Dodds Blvd', city: 'Mount Pleasant', state: 'SC', zip_code: '29464', phone: '(843)469-9608', main_url: 'www.prestonbernstein.com')

shelter6 = Shelter.create(name: 'Greek Goddess Shelter', address: '40 Patriots Point Road', city: 'Mount Pleasant', state: 'SC', zip_code: '29464', phone: '(843)469-9608', main_url: 'www.prestonbernstein.com')

shelter7 = Shelter.create(name: 'Monkey Love Shelter', address: '863 Houston Northcutt Blvd', city: 'Mount Pleasant', state: 'SC', zip_code: '29464', phone: '(843)469-9608', main_url: 'www.prestonbernstein.com')

shelter8 = Shelter.create(name: 'Mike Love Shelter', address: '302 Coleman Blvd', city: 'Mount Pleasant', state: 'SC', zip_code: '29464', phone: '(843)469-9608', main_url: 'www.prestonbernstein.com')

shelter9 = Shelter.create(name: 'Boogie Woogie Shelter', address: '1035 Johnnie Dodds Blvd', city: 'Mount Pleasant', state: 'SC', zip_code: '29464', phone: '(843)469-9608', main_url: 'www.prestonbernstein.com')

shelter10 = Shelter.create(name: 'Don Juan Corleone Shelter', address: '766 S Shelmore Ln', city: 'Mount Pleasant', state: 'SC', zip_code: '29464', phone: '(843)469-9608', main_url: 'www.prestonbernstein.com')

shelter11 = Shelter.create(name: 'Funny Buddy Shelter', address: '411 Hibben St', city: 'Mount Pleasant', state: 'SC', zip_code: '29464', phone: '(843)469-9608', main_url: 'www.prestonbernstein.com')

Animal.create(name: 'Tim', description: 'An adorable little guy with mommy and daddy issues', shelter_id: 'shelter1.id', birthday: '06//10/2014', personality: 'aggressive', color: 'gold', body_type: 'thin', trained: 'yes', sex: 'Male', size: 'XS', hair: 'curly-wire', special_needs: 'yes', animal_group: 'Dog')

Animal.create(name: 'Jeff', description: 'An adorable little guy with mommy and daddy issues', shelter_id: 'shelter2.id', birthday: '06//10/2014', personality: 'aggressive', color: 'gold', body_type: 'thin', trained: 'yes', sex: 'Male', size: 'XS', hair: 'curly-wire', special_needs: 'yes', animal_group: 'Dog')

Animal.create(name: 'Mr Fuzz', description: 'An adorable little guy with mommy and daddy issues', shelter_id: 'shelter3.id', birthday: '06//10/2014', personality: 'aggressive', color: 'gold', body_type: 'thin', trained: 'yes', sex: 'Male', size: 'XS', hair: 'curly-wire', special_needs: 'yes', animal_group: 'Dog')

Animal.create(name: 'Timmy Teeth', description: 'An adorable little guy with mommy and daddy issues', shelter_id: 'shelter4.id', birthday: '06//10/2014', personality: 'aggressive', color: 'gold', body_type: 'thin', trained: 'yes', sex: 'Male', size: 'XS', hair: 'curly-wire', special_needs: 'yes', animal_group: 'Dog')

Animal.create(name: 'Montezuma', description: 'An adorable little guy with mommy and daddy issues', shelter_id: 'shelter5.id', birthday: '06//10/2014', personality: 'aggressive', color: 'gold', body_type: 'thin', trained: 'yes', sex: 'Male', size: 'XS', hair: 'curly-wire', special_needs: 'yes', animal_group: 'Dog')

Animal.create(name: 'Saddington', description: 'An adorable little guy with mommy and daddy issues', shelter_id: 'shelter6.id', birthday: '06//10/2014', personality: 'aggressive', color: 'gold', body_type: 'thin', trained: 'yes', sex: 'Male', size: 'XS', hair: 'curly-wire', special_needs: 'yes', animal_group: 'Dog')

Animal.create(name: 'Bucci', description: 'An adorable little guy with mommy and daddy issues', shelter_id: 'shelter7.id', birthday: '06//10/2014', personality: 'aggressive', color: 'gold', body_type: 'thin', trained: 'yes', sex: 'Male', size: 'XS', hair: 'curly-wire', special_needs: 'yes', animal_group: 'Dog')

Animal.create(name: 'Dodds', description: 'An adorable little guy with mommy and daddy issues', shelter_id: 'shelter8.id', birthday: '06//10/2014', personality: 'aggressive', color: 'gold', body_type: 'thin', trained: 'yes', sex: 'Male', size: 'XS', hair: 'curly-wire', special_needs: 'yes', animal_group: 'Dog')

Animal.create(name: 'Kingso', description: 'An adorable little guy with mommy and daddy issues', shelter_id: 'shelter9.id', birthday: '06//10/2014', personality: 'aggressive', color: 'gold', body_type: 'thin', trained: 'yes', sex: 'Male', size: 'XS', hair: 'curly-wire', special_needs: 'yes', animal_group: 'Dog')

Animal.create(name: 'Merlin', description: 'An adorable little guy with mommy and daddy issues', shelter_id: 'shelter10.id', birthday: '06//10/2014', personality: 'aggressive', color: 'gold', body_type: 'thin', trained: 'yes', sex: 'Male', size: 'XS', hair: 'curly-wire', special_needs: 'yes', animal_group: 'Dog')

Animal.create(name: 'Mexi', description: 'An adorable little guy with mommy and daddy issues', shelter_id: 'shelter11.id', birthday: '06//10/2014', personality: 'aggressive', color: 'gold', body_type: 'thin', trained: 'yes', sex: 'Male', size: 'XS', hair: 'curly-wire', special_needs: 'yes', animal_group: 'Dog')