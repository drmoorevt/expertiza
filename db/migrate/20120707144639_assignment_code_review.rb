class AssignmentCodeReview < ActiveRecord::Migration
  def self.up
    add_column :assignments,:code_review, :boolean, :default => false
  end

  def self.down
    remove_column :assignments,:code_review
  end
end
