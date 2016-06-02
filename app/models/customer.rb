class Customer < ActiveRecord::Base
  belongs_to :province #indicates that a customer can belong to a single province
  validates :full_name, presence: true
end
