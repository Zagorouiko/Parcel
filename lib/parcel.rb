require('pry')
class Parcel

  cost_per_mile = 2
  cost_per_pound = 3
  oversize_volume = 64
  oversize_fee = 30
  gift_wrap_price = 1

  define_method(:initialize) do |height, length, width, weight, gift_wrap|
    @height, @length, @width, @weight, @gift_wrap = height, length, width, weight, gift_wrap
  end

  define_method(:volume) do
    @height * @length * @width
  end

  define_method(:surface_area) do
    2*@length*@width + 2*@length*@height + 2*@width*@height
  end

  define_method(:cost_to_ship) do |distance|
    cost = distance * cost_per_mile + @weight * cost_per_pound
    if volume() >= oversize_fee
      cost += oversize_fee
    end
    if @gift_wrap
      cost += gift_wrap_price * surface_area()
    end
    cost
  end
end
