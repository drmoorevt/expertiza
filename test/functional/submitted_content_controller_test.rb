require File.dirname(__FILE__) + '/../test_helper'
require 'submitted_content_controller'

# Re-raise errors caught by the controller.
class SubmittedContentController; def rescue_action(e) raise e end; end

class SubmittedContentControllerTest < ActionController::TestCase

  fixtures :all

  def setup
    @controller = SubmittedContentController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new

    @request.session[:user] = User.find(users(:student1).id )
    roleid = User.find(users(:student1).id).role_id
    Role.rebuild_cache

    Role.find(roleid).cache[:credentials]
    @request.session[:credentials] = Role.find(roleid).cache[:credentials]
    @request.session[:credentials] = nil if @request.session[:credentials].is_a? YAML::Object
    @settings = SystemSettings.find(:first)

    AuthController.set_current_role(roleid,@request.session)
  end

  def test_submit_hyperlink

    participant =  AssignmentParticipant.find(participants(:par1).id)
    participant.update_resubmit_times #update to add some date there
    puts      participant.update_resubmit_times
    post :submit_hyperlink, {:id => participants(:par1).id,:submission => "http://www.google.com"}, session_for(users(:student1))
    afterparticipant =  AssignmentParticipant.find(participants(:par1).id)
    assert_redirected_to :action => 'edit', :id => participants(:par1).id
    assert_equal 2, participant.resubmission_times.length,  "Expeciting two entries"
    assert_equal true, participant.latest_resubmit_time <= afterparticipant.latest_resubmit_time,  "latest time after previous time"
  end



end