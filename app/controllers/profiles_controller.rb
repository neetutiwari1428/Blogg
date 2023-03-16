class ProfilesController < ApplicationController
  # def index
  #   @profiles = Profile.all
  # end
  # def show
  # end
  # def new
  #   @profile = Profile.new
  # end
  # def create
  #   @profile = Profile.new(profile_params)

  #   respond_to do |format|
  #     if @profile.save
  #       format.html { redirect_to Profile_url(@profile), notice: "Profile was successfully created." }
  #       format.json { render :show, status: :created, location: @profile }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @profile.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  # def update
  #   respond_to do |format|
  #     if @profile.update(profile_params)
  #       format.html { redirect_to profile_url(@profile), notice: "Profile was successfully updated." }
  #       format.json { render :show, status: :ok, location: @profile }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @profile.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  # def destroy
  #   @profile.destroy

  #   respond_to do |format|
  #     format.html { redirect_to profiles_url, notice: "Profile was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end
  def profile_params
    params.require(:profile).permit(:name, :image, , :designation, :address, :email, :phoneno,{avatars: []})
  end

end
