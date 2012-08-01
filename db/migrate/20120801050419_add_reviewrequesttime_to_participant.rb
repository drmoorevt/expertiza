class AddReviewrequesttimeToParticipant < ActiveRecord::Migration
  def self.up
    add_column :participants, :Reviewrequest, :datetime
  end

  def self.down
    remove_column :participants, :Reviewrequest
  end
end
