class UserMailerPreview < ActionMailer::Preview
  def welcome
    user = User.first
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.forward(user)
  end
end
