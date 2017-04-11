class KidsController < ApplicationController

  before_action :set_kid, only: [:update, :destroy]

  def new
    @profile = Profile.find(params[:profile_id])
    @kid = Kid.new
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @kid = @profile.kids.build(kid_params)
    if @kid.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def update
    @kid.update(kid_params)
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile = @kid.profile
    @kid.destroy
    redirect_to profile_path(@profile)
  end

  private

  def set_kid
    @kid = Kid.find(params[:id])
  end

  def kid_params
    params.require(:kid).permit(:gender, :date_of_birth)
  end
end
