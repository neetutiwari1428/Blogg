class Workexperience < ApplicationRecord
    validates :designation ,presence: true
    validates :startdate,presence: true
    validates :enddate,presence: true
    validates :about,presence: true
end
