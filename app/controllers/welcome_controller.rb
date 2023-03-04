class WelcomeController < ApplicationController
  def index
    @profiles = Profile.all
    @skills = Skill.all
    # @skills = Skill.where(active: true)

    @languages = Language.all
    @education = Education.all
    @workexperience = Workexperience.all 
  end
end
