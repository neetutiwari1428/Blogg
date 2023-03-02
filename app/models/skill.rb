class Skill < ApplicationRecord
    validates :name,:expertise,presence: true
end
