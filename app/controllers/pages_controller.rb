class PagesController < ApplicationController
  # before_action :check_signed_in
  before_action :set_user

  # def check_signed_in
  #   redirect_to me_profiles_path if signed_in?
  # end

  def home
    # @emails = Email.find(@user.id)
    @emails = Email.all
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    @email.user_id = current_user
    if @email.save
      redirect_to root_path, notice: 'The email adress was successfully added'
    else
      render :new, notice: 'Something went wrong'
    end
  end

  private

  def email_params
    params.require(:email).permit(:first_name, :last_name, :to, :from, :email_adress)
  end

  def set_user
    @user = User.find_by(username: params[:id])
  end
end
