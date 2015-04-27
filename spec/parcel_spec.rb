require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume of the parcel') do
      test_parcel = Parcel.new(2,3,4,10)
      expect(test_parcel.volume()).to(eq(24))
    end
  end

end
