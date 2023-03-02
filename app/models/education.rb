class Education < ApplicationRecord
    validates :university, presence: true
    validates :startdate, presence: true
    validates :startdate, presence: true
    validates :enddate, presence: true
    validates :degree, presence: true
end
