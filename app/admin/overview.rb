ActiveAdmin.register Overview do

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
    permit_params :name, :description
    index do
      selectable_column
      id_column
      column :name
      column :description
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
    
    filter :name
    filter :description
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :name
        f.input :description
      end
      f.actions
    end
  end
  