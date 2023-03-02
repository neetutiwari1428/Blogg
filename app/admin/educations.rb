ActiveAdmin.register Education do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :university, :startdate, :enddate, :degree
  #
  # or
  #
  # permit_params do
  #   permitted = [:university, :startdate, :enddate, :degree]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :university, :startdate,:enddate,:degree
  index do
    selectable_column
    id_column
    column :university
    column :startdate
    column :enddate
    column :degree
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
  filter :university
  filter :startdate
  filter :enddate
  filter :degree
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  form do |f|
    f.inputs do
      f.input :university
      f.input :startdate
      f.input :enddate
      f.input :degree
    end
    f.actions
  end
end
