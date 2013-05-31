# encoding: utf-8
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
