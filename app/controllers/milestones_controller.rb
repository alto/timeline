class MilestonesController < ApplicationController

  def index
    @milestones = Milestone.all(:order => 'year ASC, month ASC, day ASC')
    @milestone = Milestone.new
  end

  def create
    @milestone = Milestone.create(params[:milestone])
    @milestone = Milestone.new unless @milestone.new_record?
    @milestones = Milestone.all(:order => 'year ASC, month ASC, day ASC')
    render :action => 'index'
  end
  
end
