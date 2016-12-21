post '/record_collections' do
  album = Album.find_by_id(params[:album_id])
  record_collection = RecordCollection.new(user: current_user, album: album, rating: 5)
  if record_collection.save
    redirect '/users/profile'
  else
    redirect "/albums/#{album.id}"
  end
end
