class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)

    @user.dives.each_with_index do |dive, index|
      dive.update_attributes(number: @user.starting_dive_number + index + 1)
    end

    if @user.valid?
      @user.save
      flash[:notice] = 'User Profile updated successfully.'
      redirect_to dives_path
    else
      errors = @user.errors.full_messages.join(', ')
      flash[:alert] = errors
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :first_name, :last_name, :email,
                                 :agency, :location, :starting_dive_number,
                                 :certification_date, :certifications,
                                 :profile_photo)
  end
end
