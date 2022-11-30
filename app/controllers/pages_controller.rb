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

  private

  def set_user
    @user = User.find_by(username: params[:id])
  end
end
