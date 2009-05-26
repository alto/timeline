require File.dirname(__FILE__) + '/../test_helper'

class MilestoneTest < ActiveSupport::TestCase

  context "a valid milestone" do
    setup do
      @milestone = Milestone.new
      @milestone.valid?
    end

    should "require some fields" do
      %w(text date).each do |field|
        assert @milestone.errors.on(field)
      end
    end
  end
  

end
