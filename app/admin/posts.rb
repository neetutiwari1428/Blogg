ActiveAdmin.register Post do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :body, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :title , :body ,:image
  index do
    selectable_column
    id_column
    column :title
    column :body
    column :image
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
  filter :title 
  filter :body
  filter :image
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  form do |f|
    f.inputs do
      f.inputs :title 
      f.inputs :body
      f.inputs :image,as: :file
    end
    f.actions
  end
end
