class StoreMilestoneDateAsSingleFields < ActiveRecord::Migration
  def self.up
    add_column :milestones, :day, :integer
    add_column :milestones, :month, :integer
    add_column :milestones, :year, :integer
    
    Milestone.all.each do |milestone|
      milestone.day   = milestone.date.day
      milestone.month = milestone.date.month
      milestone.year  = milestone.date.year
      milestone.save!
    end
  end

  def self.down
    remove_column :milestones, :day
    remove_column :milestones, :month
    remove_column :milestones, :year
  end
end
