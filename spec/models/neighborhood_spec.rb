require 'rails_helper'

describe Neighborhood do

  before do
    Neighborhood.destroy_all
  end

  capitol_hill = Neighborhood.create(name: "Capitol Hill")
  
  context '#create method' do
    it 'can create instance of model' do
      expect(capitol_hill.class.name).to eq("Neighborhood")
    end
  end

  context 'model' do
    it 'has a name' do
      expect(capitol_hill).to respond_to(:name)
    end
  end
end
