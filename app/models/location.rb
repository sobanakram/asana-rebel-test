class Location

  attr_accessor :latitude, :longitude

  def initialize(latitude = nil, longitude = nil)
    @latitude = latitude
    @longitude = longitude
  end

  def self.search(query)
    results = Geocoder.search(query)
    if results.first.nil?
      nil
    else
      coordinates = results.first.coordinates
      new(coordinates.first, coordinates.last)
    end
  end
end