require 'rails_helper'
RSpec.describe Neighborhood, type: :model do
  test_neighborhood = Neighborhood.new()
  it 'can be instantiated using Neighborhood#new' do
    expect(test_neighborhood.class.name).to eq("Neighborhood")
  end

  it 'has a name' do
    expect(test_neighborhood).to respond_to(:name)
  end
end
