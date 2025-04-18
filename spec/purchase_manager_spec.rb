require_relative "../purchase_manager"

RSpec.describe PurchaseManager do
  describe "#purchase" do
    let(:stock_service) { instance_double(StockService, fetch_stock_quantity: stock_quantity) }
    let(:stock_quantity) { 50 }
    let(:quantity) { 30 }
    let(:product_id) { 123 }
    subject { PurchaseManager.new(stock_service).purchase(product_id, quantity) }

    context "在庫が十分にある場合" do
      it "購入に成功する" do
        expect(subject).to be true
      end
    end

    context "在庫が不足している場合" do
      let(:stock_quantity) { 29 }
      it "購入に失敗する" do
        expect(subject).to be false
      end
    end
  end
end