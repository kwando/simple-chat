require_relative 'server'

class Timestamper
  def incoming(message, callback)
    if message['channel'] == '/foo'
      message['data']['timestamp'] = Time.now.to_i * 1000
    end
  ensure
    callback.call(message)
  end
end

use Faye::RackAdapter, :mount => '/faye',
    :timeout => 25,
    extensions: [Timestamper.new]

run ChatServer