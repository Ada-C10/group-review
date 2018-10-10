require "test_helper"

describe Cake do
  let(:cake) { Cake.new }

  it "must be valid" do
    value(cake).must_be :valid?
  end
end
