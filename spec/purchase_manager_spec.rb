require_relative "../purchase_manager"

RSpec.describe PurchaseManager do
  describe "#purchase" do
    it "購入に成功する" do
      stock_service = instance_double(StockService)
      allow(stock_service).to receive(:fetch_stock_quantity).with(123).and_return(50)

      purchase_manager = PurchaseManager.new(stock_service)
      result = purchase_manager.purchase(123, 30)

      expect(result).to be true
    end
  end
end