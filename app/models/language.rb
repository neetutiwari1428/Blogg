class Language < ApplicationRecord
    include Filterable
    validates :name,:expertise,presence: true
    scope :visible, -> {
        where(:visible => true)
      }
    # scope :active, where("status = ?", "active")
    # default_scope :conditions => ["status = ?", "active"]
    # scope :filter_by_name, -> (name) { where name: name }
    # scope :filter_by_expertise, -> (expertise_id) { where expertise_id: expertise_id }
    # scope :filter_by_starts_with, -> (name) { where("name like ?", "#{name}%")}
end