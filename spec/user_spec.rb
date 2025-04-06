require_relative "../user.rb"

RSpec.describe User do
  describe "#activated?" do
    it "新規ユーザーは有効化されていない" do
      user = User.new
      expect(user.activated?).to be false
    end
    it "メール認証後のユーザーは有効化される" do
      user = User.new
      user.verify_email
      expect(user.activated?).to be true
    end
  end

  describe "#profile" do
    it "新規ユーザーはプロフィールが未設定" do
      user = User.new
      expect(user.profile).to be_nil
    end

    it "プロフィール設定後は設定した内容を返す" do
      user = User.new
      user.set_profile("よろしくお願いします。")
      expect(user.profile).to eq "よろしくお願いします。"
    end
  end
end