class Workshop < ActiveRecord::Base
  belongs_to :user
  belongs_to :style
  validates_formatting_of :url, using: :url
end
