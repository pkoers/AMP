class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.forward.subject
  #
  def forward(user)
    @user = user
    mail(to: @user.email, subject: "Forwarded by AMP")
  end
end
