# encoding: utf-8
require 'spec_helper'

describe "LayoutLinks" do
  it "should reach home page at '/'" do
    get '/'
    response.should have_selector('title', :content => " | Accueil")
  end

  it "should reach contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should reach about page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => '| À propos')
  end
end
