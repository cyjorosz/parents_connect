class RegistrationsController < Devise::RegistrationsController

  def create

    super do |user|
      if user.id
        Profile.create(user_id: user.id)
      end
    end
  end

  protected

  def after_sign_up_path_for(resource)
    edit_profile_path(resource.profile)
  end

end
