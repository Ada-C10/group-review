module CakesHelper
  def assignee(cake)
    if cake.chef.present?
      cake.chef.name
    else
      "Unassigned"
    end
  end
end
