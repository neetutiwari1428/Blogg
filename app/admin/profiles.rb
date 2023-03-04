ActiveAdmin.register Profile do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :expertise
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :expertise]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :image, :name, :designation, :address, :email, :phoneno
  index do
    selectable_column
    id_column
    column :image
    column :name
    column :designation
    column :address
    column :email
    column :phoneno
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
  filter :image
  filter :name
  filter :designation
  filter :address
  filter :email
  filter :phoneno
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  form do |f|
    f.inputs do
      f.input :image,as: :file
      f.input :name
      f.input :designation
      f.input :address
      f.input :email
      f.input :phoneno
    end
    f.actions
  end
end
