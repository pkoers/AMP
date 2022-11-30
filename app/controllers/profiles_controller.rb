class ProfilesController < ApplicationController
  before_action :set_user

  def me
    @message = "Welcome "
  end

  private

  def set_user
    @user = User.find_by(email: params[:id])
  end
end
