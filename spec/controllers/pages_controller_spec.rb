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

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get :home
      response.should be_success
    end
    it "should have the correct title" do
      get :home
      response.should have_selector("title", :content => " | Accueil")
    end
  end


  describe "GET 'contact'" do
    it "should be successful" do
      get :contact
      response.should be_success
    end
    it "should have the correct title" do
      get :contact
      response.should have_selector("title", :content => " | Contact")
    end
  end

  
  describe "GET 'about'" do
    it "should be successful" do
      get :about
      response.should be_success
    end
    it "should have the correct title" do
      get :about
      response.should have_selector("title", :content => " | À propos")
    end
  end

end
