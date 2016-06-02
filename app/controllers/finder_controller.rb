class FinderController < ApplicationController
  def index
    # The @customers variable will now be accessible from
    # the automatically loaded view: app/views/finder/index.html.erb
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:full_name)
  end

  def missing_email
    @customers = Customer.where(email_address: '')
  end
end
