require 'bundler'
Bundler.require


class MyServer < Sinatra::Base
  get '/' do
    redirect('/index.html')
  end
end