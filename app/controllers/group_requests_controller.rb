class GroupRequestsController < BaseController
  before_filter :authenticate_user!, except: [:start, :new, :create, :contribute, :confirmation]

  def new
    @group_request = GroupRequest.new
  end

  def create
    @group_request = GroupRequest.new(params[:group_request])
    if @group_request.save
      render 'contribute'
    else
      render action: 'new'
    end
  end

  def contribute
    group_request = GroupRequest.find(params[:id])
    group_request.can_contribute = params[:group_request][:can_contribute]
    group_request.save!
    redirect_to group_request_confirmation_url
  end

  def confirmation
  end
end
