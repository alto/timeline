require File.dirname(__FILE__) + '/../test_helper'

class MilestonesControllerRoutingTest < ActionController::TestCase
  tests MilestonesController

  test "map show requests" do
    assert_routing('/milestones',
      {:controller => 'milestones', :action => 'index'})
  end
  
  test "map create requests" do
    assert_routing({:path => '/milestones', :method => 'post'},
      {:controller => 'milestones', :action => 'create'})
  end
  
end
  
class MilestonesControllerIndexTest < ActionController::TestCase
  tests MilestonesController

  def setup
    @milestone = Milestone.create!(:text => 'test', :day => '13', :month => '08', :year => '1969')
  end

  test "succeed and deliver the milestones" do
    get :index
    assert_response :success
    assert_equal [@milestone], assigns(:milestones)
  end
end
  
class MilestonesControllerCreateTest < ActionController::TestCase
  tests MilestonesController

  test "succeed and create it" do
    Milestone.delete_all
    post :create, {:milestone => {:text => 'test', :day => '13', :month => '08', :year => '1969'}}
    milestone = Milestone.first
    assert_equal 'test', milestone.text
  end
  
end
