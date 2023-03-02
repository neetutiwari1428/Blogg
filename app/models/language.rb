class Language < ApplicationRecord
    validates :language_name,:expertise,presence: true
end
