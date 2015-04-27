require('pry')
class Parcel

  cost_per_mile = 2
  cost_per_pound = 3
  oversize_volume = 64
  oversize_fee = 30

  define_method(:initialize) do |height, length, width, weight|
    @height, @length, @width, @weight = height, length, width, weight
  end

  define_method(:volume) do
    @height * @length * @width
  end

  define_method(:cost_to_ship) do |distance|
    cost = distance * cost_per_mile + @weight * cost_per_pound
    if volume() >= oversize_volume
       cost = cost + oversize_fee
    end
    cost
  end
end
