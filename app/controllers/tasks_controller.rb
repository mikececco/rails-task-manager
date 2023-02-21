class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new
  end

  def new
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
    # redirect_to new_task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
