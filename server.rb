require 'bundler'
Bundler.require


class MyServer < Sinatra::Base
  get '/' do
    %Q(hello world #{Time.now.to_i})
  end
end