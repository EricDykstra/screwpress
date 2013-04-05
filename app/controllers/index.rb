get '/' do
  @posts = Post.all if not Post.all == []
  erb :index
end

get '/write' do
  erb :write
end

post '/write' do
  p params
  @posted = Post.create :title => params[:title],
                        :author => params[:author],
                        :text => params[:text]
  tags = params[:tags].split(",").map {|x| x.strip.gsub(/\s/,"-")}
  Tag.create :tag => tags
  @posts = Post.all
  erb :index
end

post '/delete/:id' do
  Post.find(params[:id]).destroy
  redirect '/'
end
