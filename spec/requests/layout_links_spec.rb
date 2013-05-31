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
  
  it "should have corrects links on the layout" do
    visit home_path
    click_link "À Propos"
    response.should have_selector('title', :content => '| À propos')
    click_link "Accueil"
    response.should have_selector('title', :content => " | Accueil")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
  end
  it "TODO - add a test about view one product"
end
