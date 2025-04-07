RSpec.describe "beforeのスコープ" do
  before(:context) do
    puts "テスト全体で最初に一度だけ実行されます"
  end

  before(:example) do
    puts "各テストの前に実行されます"
  end

  it "テスト１" do
    expect(1 + 1).to eq(2)
  end

  it "テスト２" do
    expect(2 + 2).to eq(4)
  end
  
end