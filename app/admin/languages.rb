ActiveAdmin.register Language do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :language_name, :expertise
  #
  # or
  #
  # permit_params do
  #   permitted = [:language_name, :expertise]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :language_name, :expertise
  index do
    selectable_column
    id_column
    column :language_name
    column :expertise
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
  filter :language_name
  filter :expertise
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  form do |f|
    f.inputs do
      f.input :language_name
      f.input :expertise
    end
    f.actions
  end
end
