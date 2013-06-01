# encoding: utf-8
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
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
