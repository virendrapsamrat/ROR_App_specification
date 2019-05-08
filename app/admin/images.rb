ActiveAdmin.register Image do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :image_name, :real_name, :user_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end



index do
    selectable_column
    id_column
      column :image_name
      column :real_name
      column :user_id
    actions
 end 




form do |f|
    f.inputs do
      input :user_id, :label => 'userid', :as => :select, :collection => User.all.map{|u| ["#{u.first_name}", u.id]}   
      #input :user_id, as: :integer ,input_html:{required: true }
      input :real_name, as: :string  ,input_html:{ required: true }
      input :image_name,as: :file ,input_html: { required: true }
    end
    actions
  end 


end
