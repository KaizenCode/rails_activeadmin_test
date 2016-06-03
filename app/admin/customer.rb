ActiveAdmin.register Customer do
  menu parent: "Customer Info"

  permit_params :full_name, :phone_number, :email_address, :notes, :province_id

  show do
    h3 "Hi there"
    div class: "hi", onclick: "alert('test')", randomtag: "magic" do
      "This is a test"
    end

    columns do
      column do
        span "Column 1"
      end
      column do
        span "Column 2"
      end
    end
  end
  #
  # menu false

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
