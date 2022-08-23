class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
    @board
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.volume = @board.width * @board.length * @board.thickness
    @board.user = current_user

    if @board.save
      redirect_to board_path(@board)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def board_params
    params.require(:board).permit(:description, :type_of_board, :tail_shape, :fins_type, :location, :width, :length, :thickness, :price_per_day, photos: [])
  end
end
