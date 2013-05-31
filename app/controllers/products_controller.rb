# encoding: utf-8

class ProductsController < ApplicationController
  def show
    @title = 'Détails produit'
    @product = Product.find(params[:id])
  end
end
