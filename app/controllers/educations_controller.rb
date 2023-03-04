class EducationsController < ApplicationController

  private

    def education_params
      params.require(:education).permit(:university, :start, :end, :degree)
    end

end
