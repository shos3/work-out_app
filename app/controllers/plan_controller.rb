class PlanController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_plans = Plan.all.includes(current_user.id)
    @user = User.find(current_user.id)
    @plans = Plan.all
    plan = Plan.new
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
    @plan = Plan.find(params[:id])
    redirect_to plan_index_path unless current_user.id == @plan.user.id
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    redirect_to plan_index_path
  end

  private

  def plan_params
    params.require(:plan).permit(:start_time, :event, :kg, :number, :set, :time, :memo).merge(user_id: current_user.id)
  end
end
