require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  fixtures :locations

  describe "it tells the truth" do
    context "the following is true" do
      it "true" do
        expect(true).to eq(true)
      end
    end
  end
end
