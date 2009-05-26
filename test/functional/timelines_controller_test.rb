require File.dirname(__FILE__) + '/../test_helper'

class TimelinesControllerTest < ActionController::TestCase

  context "routing" do
    
    should "map show requests" do
      assert_routing('/',
        {:controller => 'timelines', :action => 'index'})
    end
    
  end
  
  context "requesting to list a timeline" do
    setup do
      @milestone = Milestone.create!(:text => 'test', :date => Time.now)
    end

    should "succeed and deliver the milestones" do
      get :index
      assert_response :success
      assert_equal [@milestone], assigns(:milestones)
    end
  end
  
  

end
