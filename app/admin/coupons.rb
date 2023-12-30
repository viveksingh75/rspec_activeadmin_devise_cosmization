

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :discount, :start_date, :end_date, :admin_user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :discount, :start_date, :end_date, :admin_user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  ActiveAdmin.register Coupon do
    permit_params :name, :discount, :start_date, :end_date, :admin_user_id

    filter :name
    filter :discount
    filter :start_date
    filter :end_date
   

    index do
      selectable_column
      id_column
      column :name
      column :discount
      column :start_date
      column :end_date
      column 'Admin User' do |coupon|
        coupon.admin_user.email if coupon.admin_user
      end
      actions
    end
  
    form do |f|
      f.inputs "Product Details" do
        f.input :name
        f.input :discount
        f.input :start_date
        f.input :end_date
        f.input :admin_user_id
        # more fields
      end
      f.actions
    end
  end
  

