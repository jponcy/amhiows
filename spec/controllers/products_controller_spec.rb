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
require 'spec_helper'

describe ProductsController do
  render_views

  describe "GET 'show'" do
    before(:each) do
      @product = FactoryGirl.create(:product)
    end
    
    it "return http sucess" do
      get :show, id: @product.id
      response.should be_success
    end
    it "should have the correct title" do
      get :show, id: @product
      response.should have_selector("title", :content => " | Détails produit")
    end
    it "should find the good product" do
      get :show, id: @product
      assigns(:product).id.should eq(@product.id)
    end
    
    it "should include the label of the product" do
      get :show, id: @product
      response.should have_selector("h1", :content => @product.label)
    end
  end
end
