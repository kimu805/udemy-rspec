require_relative "../calculator.rb"

RSpec.describe Calculator do
  describe "#divide" do
    it "0で割るとエラーが発生する" do
      calc = Calculator.new
      expect{ calc.divide(4, 0) }.to raise_error(ArgumentError)
    end
  end
end