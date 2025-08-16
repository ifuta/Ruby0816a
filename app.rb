require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

# 静的ファイルの設定
set :public_folder, 'public'
set :views, 'views'

# 開発環境での設定
configure :development do
  set :port, 4567
end

# 本番環境での設定
configure :production do
  set :port, ENV['PORT'] || 4567
end 