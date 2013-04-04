get '/' do
  @posts = Post.all if not Post.all == []
  erb :index
end

get '/write' do
  erb :write
end

post '/write' do
  @posted = Post.create :title => params[:title],
                      :author => params[:author],
                      :text => params[:text]
  @posts = Post.all
  erb :index
end
