class BoardsController < ApplicationController
  def index
    boards = Board.all
    render json: boards
  end

  def show
    board = Board.find(params[:id])
    render json: board
  end

  def create
    board = Board.create(board_params)
    join_board = UserBoard.create(user_id: params[:user_id], board_id: board.id)
    render json: board
  end

  def update
    board = Board.find(params[:id])
    board.update(board_params)
    render json: board
  end

  # def destroy
  #   board = Board.find(params[:id])
  #   board.destroy
  # end
  def archived
    boards = Board.all

    archived_boards = boards.select {|board| board.archived == true }
    render json: archived_boards
  end
    private
    def board_params
      params.permit(:user_id, :title, :board_desc, :background, :team_name, :starred, :archived)
    end
end

# Board.first.cards.first.tasks.first.checklists.first.items

