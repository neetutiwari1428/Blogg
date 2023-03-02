class Profile < ApplicationRecord
    validates :image,presence: true
    validates :name,presence: true
    validates :designation,presence: true
    validates :address,presence: true
    validates :email,presence: true
    validates :phoneno,presence: true
end
