RSpec.describe "計算機" do 
  describe "足し算" do
    it "2足す2は4になる" do
      expect(2 + 2).to eq(4)
    end

    it "1足す4は5になる" do
      expect(1 + 4).to eq(5)
    end
  end

  describe "引き算" do
    it "5引く3は2になる" do
      expect(5 - 3).to eq(2)
    end
  end
end