class SkillsController < ApplicationController

  private

    def skill_params
      params.require(:skill).permit(:name, :expertise)
    end

end
