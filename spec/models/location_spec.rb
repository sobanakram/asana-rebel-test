require 'rails_helper'

RSpec.describe Location, type: :model do
  context 'When search without query' do
    let!(:location) { Location.search('') }

    it { expect(location).to be_nil }
  end

  context 'When search with query' do
    let!(:location) { Location.search('checkpoint charlie') }

    it { expect(location.class).to eq(Location) }
    it { expect(location.latitude).to eq(52.5075075) }
    it { expect(location.longitude).to eq(13.3903737) }
  end
end
