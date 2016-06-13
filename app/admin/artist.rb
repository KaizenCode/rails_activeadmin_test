require 'httparty'

ActiveAdmin.register Artist do

  permit_params :name

  def display_search
    show do
      url = "https://api.spotify.com/v1/search?type=artist&q=#{artist.name}"
      response = HTTParty.get(url)
      pre do
        # response.parsed_response
        JSON.pretty_generate(response)
      end
    end
  end

  display_search


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
