# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  range_id    :integer
#  price       :float
#  quantity    :integer
#  label       :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :description, :label, :price, :quantity, :range_id
  
  ## validations
	validates :label, :presence => true, :length => { :within => 6..50 }
	validates :price, :numericality => { :greater_than_or_equal_to => 0 }
	validates :quantity, :numericality => { :greater_than_or_equal_to => 0 }
end
