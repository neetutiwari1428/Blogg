ActiveAdmin.register Education do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :university, :start, :degree
  #
  # or
  #
  # permit_params do
  #   permitted = [:university, :end, :degree]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :university, :start,:end,:degree
  index do
    selectable_column
    id_column
    column :university
    column :start
    column :end
    column :degree
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
  
  filter :university
  filter :start
  filter :end
  filter :degree
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  
  form do |f|
    f.inputs do
      f.input :university
      f.input :start
      f.input :end
      f.input :degree
    end
    f.actions
  end
end
