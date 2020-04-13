class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :update, :destroy]

  # GET /goals
  def index
    @goals = Goal.all

    render json: @goals
  end

  # GET /goals/1
  def show
    render json: @goal
  end

  # POST /goals
  def create
    @goal = Goal.new(goal_params)

    if @goal.save
      render json: @goal, status: :created, location: @goal
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goals/1
  def update
    # render json: @goal 
    
    # if @goal.update(update_params)
      # byebug
      @goal.counter += 1
      @goal.save
    # byebug
      render json: @goal
    # else
    #   render json: @goal.errors, status: :unprocessable_entity
    # end
  end

  # DELETE /goals/1
  def destroy
    @goal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goal_params
      params.require(:goal).permit(:likes, :private, :what, :why, :name, :start_date, :user_id)
    end

    def update_params
      params.require(:values).permit(:counter, :id, :goal_id)
    end
end




# class GoalsController < ApplicationController
#   before_action :set_goal, only: [:show, :update, :destroy]

#   # GET /goals
#   def index
#     @goals = Goal.all

#     render json: @goals
#   end

#   # GET /goals/1
#   def show
#     render json: @goal
#   end

#   # POST /goals
#   def create
    

#     @goal = Goal.create({start_date: goal_params[:start_date], likes: goal_params[:likes], private: goal_params[:private], what: goal_params[:what], why: goal_params[:why], name: goal_params[:name], date: goal_params[:date]})

#     render json: @goal

#   end

#   # PATCH/PUT /goals/1
#   def update
#     if @goal.update(goal_params)
#       render json: @goal
#     else
#       render json: @goal.errors, status: :unprocessable_entity
#     end
#   end

#   # DELETE /goals/1
#   def destroy
#     @goal.destroy
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_goal
#       @goal = Goal.find(params[:id])
#     end

#     # Only allow a trusted parameter "white list" through.
#     def goal_params
#       params.require(:goal).permit(:likes, :private, :what, :why, :name, :start_date, :user_id)
#     end
# end

