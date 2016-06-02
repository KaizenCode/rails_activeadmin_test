class Province < ActiveRecord::Base
  has_many :customers #indicates that a single province would have many customers
  validates :name, presence: true
end
