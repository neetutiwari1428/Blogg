class WelcomeController < ApplicationController
  def index
    # @profiles = Profile.all
    # @skills = Skill.all
    # @language = Language.all
    # @education = Education.all
    @workexperience = Workexperience.all
  end
end
