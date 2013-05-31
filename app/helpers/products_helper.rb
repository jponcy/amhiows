module ProductsHelper
  def print_quantity
    #{"@product.quantity "}.concat(pluralize(@product.quantity, 'article')).concat(pluralize(@product.quantity, 'disponible'))
  end
  def available?
    if @product.quantity > 0 then
      true
    else
      false
    end
  end
end
