class Kid::AchievementsController < ApplicationController

  def new
    @achievement = Achievement.new()
    @tasks = Task.all
  end

  def create
    @achievement = Achievement.new(achievement_params)
    @achievement.user = current_user
    if @achievement.save
      redirect_to kid_user_path(current_user)
    else
      @tasks = Task.all
      render :new
    end
  end

  def edit
    @achievement_find = Achievement.find(params[:id])
  end

  def update
    @achievement_find = Achievement.find(params[:id])
    # @kid = @achievement.user
    @achievement_find.update(achievement_params)

    redirect_to kid_user_path(current_user), nicejob:""
  end

  private

  def achievement_params
    params.require(:achievement).permit(:due_at, :task_id, :user_id, :achieve, :done, :points)
  end
end
