class Api::V1::ChecklistsController < ApplicationController
  def index
    checklists = Checklist.all
    render json: checklists
  end

  def show
    checklist = Checklist.find(params[:id])
    render json: checklist
  end

  def create
    checklist = Checklist.create(task_id: checklist_params[:task_id], title: checklist_params[:title])
    render json: checklist
  end

  def update
    checklist = Checklist.find(params[:id])
    checklist.update(checklist_params)
    render json: checklist
  end

  def destroy
    checklist = Checklist.find(params[:id])
    checklist.destroy
  end
  private
    def checklist_params
      params.permit(:task_id, :title)
    end
end
