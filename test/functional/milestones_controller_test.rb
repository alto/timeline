require File.dirname(__FILE__) + '/../test_helper'

class MilestonesControllerTest < ActionController::TestCase

  context "routing" do
    
    should "map show requests" do
      assert_routing('/milestones',
        {:controller => 'milestones', :action => 'index'})
    end
    
    should "map create requests" do
      assert_routing({:path => '/milestones', :method => 'post'},
        {:controller => 'milestones', :action => 'create'})
    end
    
  end
  
  context "requesting to list milestones" do
    setup do
      @milestone = Milestone.create!(:text => 'test', :day => '13', :month => '08', :year => '1969')
    end

    should "succeed and deliver the milestones" do
      get :index
      assert_response :success
      assert_equal [@milestone], assigns(:milestones)
    end
  end
  
  context "requesting to create a new milestone" do

    should "succeed and create it" do
      Milestone.delete_all
      post :create, {:milestone => {:text => 'test', :day => '13', :month => '08', :year => '1969'}}
      assert_template "milestones/index"
      assert assigns(:milestone).new_record?
      milestone = Milestone.first
      assert_equal 'test', milestone.text
    end
    
  end
  

end
