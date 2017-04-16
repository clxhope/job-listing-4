class ApplicationRecord < ActiveRecord::Base
  scope :recent, -> { order("created_at DESC")}
  
  self.abstract_class = true
end
