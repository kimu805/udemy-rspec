require_relative "../purchase_manager.rb"

RSpec.describe PurchaseManager do
  describe "#purchase" do
    it "在庫が十分にある場合は購入に成功する" do
      stock_service = instance_double(
        StockService,
        fetch_stock_quantity: 50
      )

      purchase_manager = PurchaseManager.new(stock_service)
      result = purchase_manager.purchase(123, 30)

      expect(result).to be true
    end
  end
end