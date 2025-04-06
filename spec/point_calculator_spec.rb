require_relative "../point_calculator.rb"

RSpec.describe PointCalculator do
  describe "#calculate_points" do 
    context "ゴールド会員の場合" do
      it "ポイントが2倍になる" do
        calculator = PointCalculator.new
        expect(calculator.calculate_points(100, "gold")).to eq(200)
      end
    end

    context "シルバー会員の場合" do
      context "amountが偶数の場合" do
        it "ポイントが1.5倍になること" do
          calculator = PointCalculator.new
          expect(calculator.calculate_points(100, "silver")).to eq(150)
        end
      end
      context "amountが奇数の場合" do
        it "ポイントが1.5倍になり小数が切り捨てられること" do
          calculator = PointCalculator.new
          expect(calculator.calculate_points(101, "silver")).to eq(151)
        end
      end
    end

    context "一般会員の場合" do
      it "ポイントはそのまま" do
        calculator = PointCalculator.new
        expect(calculator.calculate_points(100, "regular")).to eq(100)
      end
    end
  end
end