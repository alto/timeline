class MilestonesController < ApplicationController

  def index
    @milestones = Milestone.all(:order => 'year ASC, month ASC, day ASC')
    @milestone = Milestone.new
  end

  def create
    milestone = Milestone.create(params[:milestone])
    milestones = Milestone.all(:order => 'year ASC, month ASC, day ASC')
    
    render :update do |page|
      page['milestone_day'].clear
      page['milestone_month'].clear
      page['milestone_year'].clear
      page['milestone_text'].clear
      if milestones.index(milestone) == 0
        page.insert_html(:top, 'timeline', 
          :partial => 'milestone', :object => milestone)
      else
        page.insert_html(:after, "milestone_#{milestones[milestones.index(milestone)-1].id}", 
          :partial => 'milestone', :object => milestone)
      end
    end
  end
  
end
