class TasksController < ApplicationController
  def index
    tasks = Card.all
    render json: tasks
  end
  def show
    task = Card.find(params[:id])
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
      params.permit(:card_id, :note, :task_desc, :archived)
    end
end
