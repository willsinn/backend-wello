class TaskChecklistsController < ApplicationController
  def index
    lists = TaskChecklist.all
    render json: lists
  end

  def show
    list = TaskChecklist.find(params[:id])
    render json: list
  end

  def create
    list = TaskChecklist.create(task_id: params[:task_id], title: params[:title])
    render json: list
  end

  def update
    list = TaskChecklist.find(params[:id])
    list.update(task_checklist_params)
    render json: list
  end

  def destroy
    list = TaskChecklist.find(params[:id])
    list.destroy
  end
  private
    def task_checklist_params
      params.permit( :task_id, :title )
    end
end
