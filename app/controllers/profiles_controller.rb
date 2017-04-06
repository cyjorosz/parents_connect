class ProfilesController < ApplicationController
  before_action :find_profile

  def index
    @profiles = Profile.all
    @kids = @profile.kids
  end

  def show
    @kid = Kid.new
    @kids = @profile.kids
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to profile_path(@profile)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def find_profile
    @profile = Profile.find_by_user_id(current_user.id)
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :date_of_birth, :street_name,
      :street_number, :zipcode, :city, :country, :gender, :pregnant, :due_date, :bio, :photo, :photo_cache, :tag_list)
  end


end
