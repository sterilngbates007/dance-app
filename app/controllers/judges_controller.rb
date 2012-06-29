class JudgesController < ApplicationController

  def create
    @contest = Contest.find(params[:contest_id])
    @judge = @contest.judges.create(params[:judge])
    redirect_to contest_path(@contest)
  end
 
  def destroy
    @contest = Contest.find(params[:contest_id])
    @judge = @contest.judges.find(params[:id])
    @judge.destroy
    redirect_to contest_path(@contest)
  end
  
end
