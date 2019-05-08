ActiveAdmin.register Company do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :country_id, :state_id, :city_id, :country_id, :postcode, :start_date, :active, :user_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


form do |form|
   form.inputs do
   form.input :name, :label => 'Name'
   form.input :country_id, :label => 'countryid', :as => :select, :collection => Country.all.map{|u| ["#{u.country_name}", u.id]}   
   form.input :state_id, :label => 'Stateid', :as => :select, :collection => State.all.map{|u| ["#{u.state_city}", u.id]}   
   form.input :city_id, :label => 'Cityid', :as => :select, :collection => City.all.map{|u| ["#{u.city_name}", u.id]}   
   form.input :postcode, :label => 'Postcode'
   form.input :start_date, :label => 'Startdate'
   form.input :active, :label => 'Active'
   #<%= form.submit %>
    
   

  end
   form.actions
 end

end
