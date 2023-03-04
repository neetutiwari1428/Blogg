class Workexperience < ApplicationRecord
    validates :designation ,presence: true
    validates :start,presence: true
    validates :end,presence: true
    validates :details,presence: true
end
