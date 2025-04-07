RSpec.describe "letの基本的な使い方" do
  let(:number) do
    puts "number作成"
    42
  end

  it "numberを使うときだけ生成される" do
    puts "テストを実行します"
    expect(number).to eq(42)
  end
end