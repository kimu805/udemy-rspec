require_relative "../account.rb"

RSpec.describe Account do
  describe "#add_points" do
    it "ポイントを加算できる" do
      account = Account.new(points: 100)
      expect { account.add_points(30) }.to change { account.points }.by(30)
    end
  end
  describe "#use_points" do
    it "ポイントを使用すると残高が減少する" do
      account = Account.new(points: 100)
      expect { account.use_points(30) }.to change { account.points }.by(-30)
    end
    it "残高が足りない場合は変化しない" do
      account = Account.new(points: 10)
      expect { account.use_points(30) }.not_to change { account.points }
    end
  end
end