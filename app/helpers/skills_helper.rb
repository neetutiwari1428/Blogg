module SkillsHelper
    def boolean_to_activity status
        status ? "Active" : "Inactive"
    end
end
