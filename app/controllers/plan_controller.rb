class PlanController < ApplicationController
  before_action :authenticate_user!


 # def index
  #  @plan = Plan.includes(:user)
  #end


  
#end


def index
  @plans = Plan.all
end

def new
  @plan = Plan.new
end

def show
 # @plan = Plan.find(params[:id])
end

def create
  Plan.create(plan_parameter)
  redirect_to plans_path
end

def destroy
  @plan = Plan.find(params[:id])
  @plan.destroy
  redirect_to plans_path, notice:"削除しました"
end

def edit
  @plan = Plan.find(params[:id])
end

def update
  @plan = Plan.find(params[:id])
  if @plan.update(plan_parameter)
    redirect_to plans_path, notice: "編集しました"
  else
    render 'edit'
  end
end

private

def plan_parameter
  params.require(:plan).permit(:date)
end

end