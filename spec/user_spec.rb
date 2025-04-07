require_relative "../user.rb"

RSpec.describe User do
  describe "#data" do
    it "ユーザー情報に必要な属性が含まれている" do
      user = User.new(name: "山田太郎", age: 25, email: "yamada@example.com")
      expect(user.data).to include(:name, :email)
    end

    it "ユーザー情報に必要な値が含まれている" do
      user = User.new(name: "山田太郎", age: 25, email: "yamada@example.com")
      expect(user.data.values).to include("山田太郎")
    end
  end
end