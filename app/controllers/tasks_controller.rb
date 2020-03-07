class TasksController < ApplicationController
  def index
    tasks = Item.all
    render json: tasks
  end
  def show
    task = Item.find(params[:id])
    render json: task
  end
  def create
    task = Task.create(task_params)
    render json: task
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    render json: task
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
  end
  private
    def task_params
      params.permit(:item_id, :desc, :note)
    end
end
