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

def show
 @plan = Plan.find(params[:id])
end


def create
  #binding.pry
  @plan = Plan.new(plan_params)
  if @plan.save
    redirect_to action: :index
    else
    render :new
  end
end


def destroy
  @plan = Plan.find(params[:id])
  @plan.destroy
  redirect_to plan_index_path
end

#def edit
 # @plan = Plan.find(params[:id])
#end

#def update
  #@plan = Plan.find(params[:id])
  #if @plan.update(plan_parameter)
  #  redirect_to plans_path, notice: "編集しました"
 # else
  #  render 'edit'
 #end
#end

private

    def plan_params
      params.require(:plan).permit(:date, :event, :kg, :number, :set, :time, :start_time, :memo).merge(user_id: current_user.id)
    end

end
