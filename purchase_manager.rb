require_relative "./stock_service"

class PurchaseManager
  def initialize(stock_service)
    @stock_service = stock_service
  end

  def purchase(product_id, quantity)
    stock = @stock_service.fetch_stock_quantity(product_id)
    if stock >= quantity
      true
    else
      false
    end
  end
end