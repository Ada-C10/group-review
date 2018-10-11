require "test_helper"

describe Cake do
  let(:cake) { cakes(:basic) }


  # VALIDATIONS TESTS
  it "must be valid" do
    expect(cake).must_be :valid?
  end

  it "wont be valid without a message" do
    # Arrange
    cake = cakes(:basic)
    cake.message = nil

    # Act
    result = cake.valid?

    # Assert
    expect(result).wont_equal true
  end

  it "will only be valid with a correct size" do
    cake.size = "grande"
    expect(cake).wont_be :valid?

    cake.size = nil
    expect(cake).wont_be :valid?

    Cake::SIZES.each do |size|
      cake.size = size

      expect(cake).must_be :valid?
    end
  end

  it "won't be valid with an overdue pickup" do
    cake.pickup = Date.yesterday.end_of_day

    expect(cake).wont_be :valid?
  end

  # RELATIONS TESTS
  it "must relate to a chef" do
    expect(cake).must_respond_to :chef

    expect(cake.chef).must_be_kind_of Chef

    expect(cake.chef.cakes).must_include cake
  end
end
