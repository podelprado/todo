class ChangeColumnFinished < ActiveRecord::Migration
  def self.up
    change_column :tasks, :finished, :boolean, :default => false
  end

  def self.down
    change_column :tasks, :finished, :boolean
  end
end
