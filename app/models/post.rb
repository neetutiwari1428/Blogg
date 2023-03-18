class Post < ApplicationRecord
    mount_uploader :image, FileUploader
    has_one_attached :image
end
