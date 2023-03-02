class Workexperience < ApplicationRecord
    validates :designation ,presence: true
    validates :company,presence: true
    validates :current_company,presence: true
    validates :startdate,presence: true
    validates :enddate,presence: true
    validates :about,presence: true
end
