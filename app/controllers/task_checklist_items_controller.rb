class TaskChecklistItemsController < ApplicationController
    def index
        items = TaskChecklistItem.all
        render json: items
      end
    
      def show
        item = TaskChecklistItem.find(params[:id])
        render json: item
      end
    
      def create
        item = TaskChecklistItem.create(task_checklist_id: params[:task_checklist_id], item: params[:item])
        render json: item
      end
    
      def update
        item = TaskChecklistItem.find(params[:id])
        item.update(task_checklist_item_params)
        render json: item
      end
    
      def destroy
        item = TaskChecklistItem.find(params[:id])
        item.destroy
      end
      private
        def task_checklist_item_params
          params.permit( :task_checklist_id, :item, :completed )
        end
end
