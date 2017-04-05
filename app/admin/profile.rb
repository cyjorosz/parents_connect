ActiveAdmin.register Profile do

permit_params :first_name, :last_name, :date_of_birth, :street_name, :street_number, :zipcode, :city, :country, :gender, :pregnant, :due_date, :bio, :photo, :photo_cache


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
