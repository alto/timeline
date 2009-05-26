class TimelinesController < ApplicationController
  
  def index
    @milestones = Milestone.all(:order => 'date ASC')
  end
  
end
