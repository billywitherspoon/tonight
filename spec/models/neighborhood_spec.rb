require 'rails_helper'

RSpec.describe Neighborhood, type: :model do

  before do
    Neighborhood.destroy_all
  end

  capitol_hill = Neighborhood.create(name: "Capitol Hill")

  describe '#create method' do
    it 'can create instance of model' do
      expect(capitol_hill.class.name).to eq("Neighborhood")
    end
  end

  describe 'instance' do
    it 'has a name' do
      expect(capitol_hill).to respond_to(:name)
    end
  end
end
