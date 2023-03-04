ActiveAdmin.register Workexperience do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :designation, :company, :current_company, :start, :enddate, :details
  #
  # or
  #
  # permit_params do
  #   permitted = [:designation, :company, :current_company, :start, :enddate, :details]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :designation, :company,:current_company,:start,:end,:details
  index do
    selectable_column
    id_column
    column :designation
    column :company
    column :start
    column :end
    column :details
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
  
  filter :designation
  filter :company
  filter :start
  filter :end
  filter :details
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :designation
      f.input :company
      f.input :start
      f.input :end
      f.input :details
    end
    f.actions
  end
end
