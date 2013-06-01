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

require 'spec_helper'

describe Product do
  before(:each) do
    @attr = {
      :label => "Example de produit.",
      :description => "Un magnifique article.",
      :price => 3.4,
      :quantity => 1
    }
  end

  it "should create an instance with valids attributes" do
    Product.create!(@attr)
  end

  ## tests about the validation of label
  it "should have a label" do
    lambda{ Product.create!(@attr.merge(:label => nil)) }.should raise_error
  end
  it "should have a short (enough) label" do
    lambda{ Product.create!(@attr.merge(:label => "a" * 51)) }.should raise_error
  end
  it "should have a long enough label" do
    lambda{ Product.create!(@attr.merge(:label => "a" * 5)) }.should raise_error
  end
  
  ## tests about the validation of quantity
  it "should have a quantity positive or null" do
    lambda{ Product.create!(@attr.merge(:quantity => -1)) }.should raise_error
  end
  
  ## tests about the validation of price
  it "should have a positive price" do
    lambda{ Product.create!(@attr.merge(:price => -1)) }.should raise_error
  end
end
