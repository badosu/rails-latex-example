class Presentation < ActiveRecord::Base
  has_many :slides
  accepts_nested_attributes_for :slides
end
