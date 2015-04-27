class Parcel

  cost_per_mile = 2
  cost_per_pound = 3

  define_method(:initialize) do |height, length, width, weight|
    @height, @length, @width, @weight = height, length, width, weight
  end

  define_method(:volume) do
    @height * @length * @width
  end

  define_method(:cost_to_ship) do |distance|
    
  end
end
