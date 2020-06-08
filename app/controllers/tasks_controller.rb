class TasksController < ApplicationController
  def index
    tasks = Card.all
    render json: tasks
  end
  def show
    task = Task.find(params[:id])
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

  # def destroy
  #   task = Task.find(params[:id])
  #   task.destroy
  # end
  def archived
    tasks = Task.all

    archived_tasks = tasks.select {|task| task.archived == true }
    render json: archived_tasks
  end
  private
    def task_params
      params.permit(:card_id, :note, :task_desc, :archived)
    end
end
