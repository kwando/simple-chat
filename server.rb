require 'bundler'
Bundler.require


class ChatServer < Sinatra::Base
  get '/' do
    redirect('/index.html')
  end
end