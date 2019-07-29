require './lib/module/loggable'

class User
  include Loggable

  def name
    log 'name is called'
    'Alice'
  end
end

user = User.new
puts user.name