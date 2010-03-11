class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.text :body
      t.boolean :finished
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :category
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
