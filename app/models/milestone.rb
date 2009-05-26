class Milestone < ActiveRecord::Base
  
  validates_presence_of :text, :date
  
end
