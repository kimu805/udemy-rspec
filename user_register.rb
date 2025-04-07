require_relative "./email_service"

class UserRegister
  def initialize(email_service)
    @email_service = email_service
  end

  def register(email)
    puts "ユーザー登録中..."

    @email_service.send_welcome_mail(email)
  end
end