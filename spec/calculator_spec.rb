require_relative "../calculator.rb"

RSpec.describe Calculator do
  describe "#divide" do
    it "0で割るとエラーが発生する" do
      calc = Calculator.new
      expect{ calc.divide(4, 0) }.to raise_error(ArgumentError)
    end

    it "0で割るとエラーメッセージが表示される" do
      calc = Calculator.new
      expect { calc.divide(4, 0).to raise_error(ArgumentError, "0で割ることはできません")}
    end

    it "通常の割り算は成功する" do
      calc = Calculator.new
      expect { calc.divide(10, 2) }.not_to raise_error
    end
  end
end