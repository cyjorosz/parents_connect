class RegistrationsController < Devise::RegistrationsController

  def create
    super do
      profile = Profile.create(user_id: resource.id)
      # address = Address.create(user_id: user.id)
    end
  end

  protected

  def after_sign_up_path_for(resource)
    edit_profile_path(resource.profile)
  end

end
