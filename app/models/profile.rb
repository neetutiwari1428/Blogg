class Profile < ApplicationRecord
    mount_uploader :image, FileUploader
    validates :name,presence: true
    validates :designation,presence: true
    validates :address,presence: true
    validates :email,presence: true
    validates :phoneno,presence: true,length:{ maximum: 10}
end