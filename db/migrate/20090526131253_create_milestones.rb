class CreateMilestones < ActiveRecord::Migration
  def self.up
    create_table :milestones do |t|
      t.text      :text
      t.datetime  :date
      t.timestamps
    end
  end

  def self.down
    drop_table :milestones
  end
end
