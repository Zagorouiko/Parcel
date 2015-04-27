require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume of the parcel') do
      test_parcel = Parcel.new(2,3,4,10,false)
      expect(test_parcel.volume()).to(eq(24))
    end
  end

  describe('#cost_to_ship') do
    it('returns the cost to ship based off distance and weight') do
      test_parcel = Parcel.new(2,3,4,10,false)
      expect(test_parcel.cost_to_ship(50)).to(eq(130))
    end

    it('adds on a fee if the parcel is oversized') do
      test_parcel = Parcel.new(4,4,4,10,false)
      expect(test_parcel.cost_to_ship(50)).to(eq(160))
    end

    it('adds a fee if the parcel should be giftwrapped') do
      test_parcel = Parcel.new(4,4,4,10,true)
      expect(test_parcel.cost_to_ship(50)).to(eq(256))
    end

    it('adds a 20%discount based on the size of the parcel') do
      test_parcel = Parcel.new(1,1,1,1,false)
      expect(test_parcel.cost_to_ship(1)).to(eq(4))
    end
  end

end
