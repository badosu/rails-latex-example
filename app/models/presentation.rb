class Presentation < ActiveRecord::Base
  attr_accessible :title, :author
  has_many :slides
  accepts_nested_attributes_for :slides
end
