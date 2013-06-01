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
