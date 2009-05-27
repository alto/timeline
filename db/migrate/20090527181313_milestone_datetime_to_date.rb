class MilestoneDatetimeToDate < ActiveRecord::Migration
  def self.up
    change_column :milestones, :date, :date
  end

  def self.down
    change_column :milestones, :date, :datetime
  end
end
