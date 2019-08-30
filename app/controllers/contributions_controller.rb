class ContributionsController < ApplicationController
  def index
    contributions = Contribution.all
    render json: contributions
  end

  def show
    contribution = Contribution.find_by(id: params[:id])
    if contribution
      render json: contribution
    else
      render json: { error: "Contribution not found." }, status: 404
    end
  end

  def create
    #byebug
    contribution = Contribution.create(contribution_params)
    render json: contribution
  end

  def update
    #byebug
    contribution = Contribution.find_by(id: params[:id])
    if contribution
      contribution.update(contribution_params)
      render json: contribution
    else
      render json: { error: "Contribution doesn't exist" }
    end
  end

  def destroy
    
    contribution = Contribution.find_by(id: params[:id])
    if contribution
      contribution.destroy
      render json: contribution
    else
      render json: { error: "Contribution doesn't exist" }
    end
  end

  private

  def contribution_params
    params.require(:contribution).permit(:user_id, :event_id, :text, :url)
  end
end
