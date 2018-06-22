class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  delegate :to_h, to: :attributes
end
