ActiveAdmin.register Movie do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :movie, :explain, :muscle, :title, :score
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs "Movie" do
      f.inputs :title
      f.inputs :movie
      f.inputs :muscle
      f.inputs :explain
      f.inputs :score
    end
    f.actions
  end

end
