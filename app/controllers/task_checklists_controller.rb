class TaskChecklistsController < ApplicationController
  def index
    items = TaskChecklist.all
    render json: items
  end

  def show
    item = TaskChecklist.find(params[:id])
    render json: item
  end

  def create
    item = TaskChecklist.create(task_id: params[:task_id])
    render json: item
  end

  def update
    item = TaskChecklist.find(params[:id])
    item.update(task_checklist_params)
    render json: item
  end

  def destroy
    item = TaskChecklist.find(params[:id])
    item.destroy
  end
  private
    def task_checklist_params
      params.permit(:task_id, :item, :completed)
    end
end
