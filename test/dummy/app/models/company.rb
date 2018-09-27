class Company < ActiveRecord::Base
  has_many :members
  paginates_per 3
  validates :name, :presence => true
end
