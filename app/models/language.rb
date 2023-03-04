class Language < ApplicationRecord
    validates :name,:expertise,presence: true
end
