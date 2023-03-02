class ProfilesController < InheritedResources::Base

  private

    def profile_params
      params.require(:profile).permit(:name, :designation, :address, :email, :phoneno)
    end

end
