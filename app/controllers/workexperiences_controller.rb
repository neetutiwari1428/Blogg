class WorkexperiencesController < ApplicationController

  private

    def workexperience_params
      params.require(:workexperience).permit(:designation, :company, :start, :end, :details)
    end

end
