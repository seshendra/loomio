class GroupRequestsController < BaseController
  before_filter :authenticate_user!, except: [:start, :new, :create, :contribution, :confirmation]

  def new
    @group_request = GroupRequest.new
  end

  def create
    @group_request = GroupRequest.new(params[:group_request])
    if @group_request.save
      render 'contribution'
    else
      render action: 'new'
    end
  end

  def contribution
    group_request = GroupRequest.find(params[:id])
    group_request.contribution_type = params[:group_request][:contribution_type]
    group_request.contribution_amount = params[:group_request][:contribution_amount]
    group_request.contribution_frequency = params[:group_request][:contribution_frequency]
    group_request.save!
    redirect_to group_request_confirmation_url
  end

  def confirmation
  end
end
