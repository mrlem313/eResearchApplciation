class GoalsController < ApplicationController
  before_action :set_research_application, only: [:index, :show, :edit, :update, :destroy]

  def index
    @goals = Goal.all
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(params[:goal])
    if @goal.save
      redirect_to @goal, :notice => "Successfully created goal."
    else
      render :action => 'new'
    end
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    if @goal.update_attributes(params[:goal])
      redirect_to @goal, :notice  => "Successfully updated goal."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to goals_url, :notice => "Successfully destroyed goal."
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      if params[:id]
        @Goal = Goal.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_goal
      params.require(:ResearchContext).permit(:research_application_id, :study_signifigance, :rationale, :citiation, :problem_statement)
    end   
end
