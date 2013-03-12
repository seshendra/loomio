require 'spec_helper'

describe GroupRequestsController do

  describe "#create" do
    it "should redirect to the contribute page" do
      post :create, :group_request => attributes_for(:group_request)
      response.should render_template("contribute")
    end
  end

  describe "#contribute" do
    it "should redirect to the confirmation page" do
      group_request = create :group_request
      put :contribute, id: group_request.id, :group_request => {can_contribute: "false"}
      response.should redirect_to(group_request_confirmation_url)
    end
  end

  describe "#confirmation" do
    it "should successfully render the confirmation page" do
      get :confirmation
      response.should be_success
      response.should render_template("confirmation")
    end
  end
end
