class BookingsController < ApplicationController
  def new
    @board = Board.find(params[:board_id])
    @booking = Booking.new
  end

  def create
    @board = Board.find(params[:board_id])
    @booking = Booking.new(booking_params)
    @booking.board = @board
    @booking.user = current_user
    days = (@booking.end_date - @booking.start_date).to_i
    @booking.total_price = @board.price_per_day * days
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update!(status: 'accepted')
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.update!(status: 'declined')
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
