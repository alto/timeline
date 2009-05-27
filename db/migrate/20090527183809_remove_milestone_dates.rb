class RemoveMilestoneDates < ActiveRecord::Migration
  def self.up
    remove_column :milestones, :date
  end

  def self.down
    add_column :milestones, :date, :date
  end
end
