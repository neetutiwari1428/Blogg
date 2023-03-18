class WelcomeController < ApplicationController
  require "prawn/measurement_extensions"
  
  def index
    @profiles = Profile.all
    # @skills = Skill.all
    @skills = Skill.where("status = True")
    @projects = Project.all
    # @languages = Language.all
    @languages = Language.where("status = True")
    @education = Education.all
    @workexperience = Workexperience.all 
    @welcome = Welcome.all
  end
  def pdf 
    # @profiles = Profile.find(1)
    # @skills = Skill.find(1)
    # @projects = Project.find(1)
    # @languages = Language.find(3)
    # @education = Education.find(1)
    # @workexperience = Workexperience.find(1)
    @welcome = Welcome.all
    pdf = Prawn::Document.new
    # pdf = Welcomepdf.new
    # pdf = Prawn::Document.new(:page_size => "A4")
    # render :partial => "welcome/edu"
    
    # %i[Hello Hi Hey Bye Thankyou ].each do |measurement|
    #   # pdf.text "1 #{measurement} in PDF Points: #{1.send(measurement)} pt"
    #   pdf.text "#{measurement} Neetu Tiwari" ,size: 20, style: :bold
    # end
    
    send_data(pdf.render ,
              # filename: "#{@profiles.name}.pdf"
              filename: "Neetu.pdf",
              type:"application/pdf",
              disposition:"inline")
  end
  
end
