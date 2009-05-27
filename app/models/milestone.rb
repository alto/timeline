class Milestone < ActiveRecord::Base
  
  validates_presence_of :text, :day, :month, :year
  
end
