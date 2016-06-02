class FinderController < ApplicationController
  def index
    # The @customers variable will now be accessible from
    # the automatically loaded view: app/views/finder/index.html.erb
    @customers = Customer.all
    @page_title = "All Customers"
    # render :index #this is unnecessary
  end

  def alphabetized
    @customers = Customer.order(:full_name)
    @page_title = "Alphabetized Customers"
    render :index #will force render the index view instead of alphabetized
  end

  def missing_email
    @customers = Customer.where(email_address: '')
    @page_title = "Customers missing email"
    render :index
  end
end
