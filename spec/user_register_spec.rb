require_relative "../user_register"

RSpec.describe UserRegister do
  describe "#register" do
    it "ウェルカムメールが送信される" do
      email_service = double(EmailService)

      expect(email_service).to receive(:deliver_welcome_mail).with("test@example.com")

      user_register = UserRegister.new(email_service)
      user_register.register("test@example.com")
    end
  end
end