require File.dirname(__FILE__) + '/../test_helper'

class MilestoneTest < ActiveSupport::TestCase

  def setup
    @milestone = Milestone.new
    @milestone.valid?
  end

  test "presence of some fields" do
    %w(text day month year).each do |field|
      assert @milestone.errors.on(field)
    end
  end

end
