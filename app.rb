require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  length = params.fetch('length').to_i
  width = params.fetch('width').to_i
  height = params.fetch('height').to_i
  weight = params.fetch('weight').to_i
  distance = params.fetch('distance').to_i
  parcel = Parcel.new(height, length, width, weight)

  @user_entered = ![length, width, height, weight, distance].include?(0)
  @cost = parcel.cost_to_ship(distance)
  erb(:output)
end
