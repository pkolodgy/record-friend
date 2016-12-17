# Create Users
30.times do
  username = Faker::Internet.user_name
  password = Faker::Internet.password
  User.create!(username: username, password: password)
end

# Create Artists
20.times do
  name = Faker::Name.name
  location = Faker::Address.city
  Artist.find_or_create_by(name: name, location: location)
end

#Create Label
10.times do
  name = Faker::Hipster.word.capitalize
  Label.find_or_create_by(name: name)
end

# Create Albums
75.times do
  artist = Artist.all.sample
  label = Label.all.sample
  title = Faker::Book.title
  year = rand(1961..2016)
  Album.find_or_create_by(artist: artist, label: label, title: title, release_year: year)
end

# Create collections
200.times do
  user = User.all.sample
  album = Album.all.sample
  rating = rand(1..10)
  review = Faker::Lorem.paragraph(2)
  RecordCollection.find_or_create_by(user: user, album: album, rating: rating, review: review)
end
