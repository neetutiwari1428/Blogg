class WelcomeController < ApplicationController
  require "prawn"
  def index
    @profiles = Profile.all
    # @skills = Skill.all
    @skills= Skill.where("status = True")
    @projects = Project.all
    # @languages = Language.all
    @languages = Language.where("status = True")
    @education = Education.all
    @workexperience = Workexperience.all 
  end
  def pdf 
    @profiles = Profile.find(1)
    pdf = Prawn::Document.new
    pdf.text "Neetu" ,size: 20, style: :bold
    
    
    send_data(pdf.render ,
              filename: "#{@profiles.name}.pdf",
              type:"application/pdf",
              disposition:"inline")
  end
end
