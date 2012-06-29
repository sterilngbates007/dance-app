class ContestantsController < ApplicationController
  def create
    @contest = Contest.find(params[:contest_id])
    @contestant = @contest.contestants.create(params[:contestant])
    redirect_to contest_path(@contest)
  end
 
  def destroy
    @contest = Contest.find(params[:contest_id])
    @contestant = @contest.contestants.find(params[:id])
    @contestant.destroy
    redirect_to contest_path(@contest)
  end

end
