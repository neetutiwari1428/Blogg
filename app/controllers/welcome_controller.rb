class WelcomeController < ApplicationController
  def index
    @profiles = Profile.all
    @skills = Skill.all
    @languages = Language.all
    @education = Education.all
    @workexperience = Workexperience.all
  end
end
