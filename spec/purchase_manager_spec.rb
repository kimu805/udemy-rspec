require_relative "../purchase_manager"

RSpec.describe PurchaseManager do
  describe "#purchase" do
    let(:stock_service) { instance_double(StockService, fetch_stock_quantity: 50) }
    let(:stock_quantity) { 50 }
    let(:quantity) { 30 }
    let(:product_id) { 123 }
    subject { PurchaseManager.new(stock_service).purchase(product_id, quantity) }

    context "在庫が十分にある場合" do
      it "購入に成功する" do
        result = subject
        expect(result).to be true
      end
    end
  end
end