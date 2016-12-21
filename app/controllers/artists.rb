get '/artists/:id' do
  @artist = Artist.find_by_id(params[:id])
  erb :'artists/show'
end
