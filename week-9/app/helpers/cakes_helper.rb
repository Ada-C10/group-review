module CakesHelper
  def assignee(cake)
    if cake.chef.present?
      cake.chef.name
    else
      form_with(url: cake_assign_path(cake)) do |f|
        (f.collection_select :chef_id, Chef.all, :id, :name) +
        (f.submit 'Assign')
      end
    end
  end
end
