class Language < ApplicationRecord
    # include Filterable
    validates :name,:expertise,presence: true
    # scope :visible, -> {
    #     where(:visible => true)
    #   }
end