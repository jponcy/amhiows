# encoding: utf-8

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
