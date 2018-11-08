require "test_helper"

describe CakesController do
  # it "must be a real test" do
  #   flunk "Need real tests"
  # end


  it "can be assigned to a chef" do
    cake = cakes(:unassigned)
    chef = chefs(:roberta)

    post cake_assign_path(cake.id), params: {
      chef_id: chef.id
    }

    # Expect that it was actually assigned to the chef
    cake.reload
    chef.reload

    expect(cake.chef).must_equal chef
    expect(chef.cakes).must_include cake


    must_redirect_to cakes_path
  end

  it "cannot be assigned if already assigned" do
    cake = cakes(:basic)
    new_chef = chefs(:roberta)

    # Track the original assignee
    original_chef = cake.chef
    expect(original_chef).wont_equal nil

    post cake_assign_path(cake.id), params: {
      chef_id: new_chef.id
    }

    # Expect that it was actually assigned to the chef
    cake.reload
    new_chef.reload

    expect(cake.chef).must_equal original_chef
    must_respond_with :bad_request
  end


end
