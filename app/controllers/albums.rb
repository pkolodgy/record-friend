get '/albums' do
  @all_albums = Album.all.sort_by {|album| album.artist.name }
  erb :'albums/index'
end

get '/albums/new' do
  erb :'albums/new'
end

post '/albums' do
  artist = Artist.find_or_create_by(name: params[:album]["artist"])
  label = Label.find_or_create_by(name: params[:album]["label"])
  new_album = Album.new(artist_id: artist.id, label_id: label.id, title: params[:album]["title"], release_year: params[:album]["year"].to_i)
  if new_album.save
    redirect '/albums'
  else
    @errors = new_album.errors.full_messages
    erb :'/albums/new'
  end
end

get '/albums/:id' do
  @album = Album.find(params[:id])
  @avg_rating = RecordCollection.where(album_id: params[:id]).average(:rating).to_f.round(1)
  erb :'albums/show'
end
