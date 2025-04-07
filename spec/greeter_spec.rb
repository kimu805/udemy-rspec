require_relative "../greeter"

RSpec.describe Greeter do
  describe "#hello" do
    subject(:greeting) { Greeter.new.hello }

    it "Helloという文字列を返す" do
      expect(greeting).to eq("Hello")
    end

    it "Helloはnilではない" do
      expect(greeting).not_to be_nil
    end

    it "Helloは空文字ではない" do
      expect(greeting).not_to be_empty
    end
  end
end