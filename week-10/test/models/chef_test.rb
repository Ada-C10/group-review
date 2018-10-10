require "test_helper"

describe Chef do
  let(:chef) { Chef.new }

  it "must be valid" do
    value(chef).must_be :valid?
  end
end
