class Education < ApplicationRecord
    validates :university, presence: true
    validates :start, presence: true
    validates :end, presence: true
    validates :degree, presence: true
end

