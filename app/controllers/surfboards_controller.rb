# Surfboard controller
class SurfboardsController < ProtectedController
  skip_before_action :authenticate, only: [:show, :index]
  before_action :authenticate, only: [:create]
  # Unauthenticated

  def index
    @surfboads = Surfboard.all

    render json: @surfboards
  end

  def show
    render json: Surfboard.find(params[:id])
  end

  # Require Authentication
  def create
    binding.pry
    @surfboard = current_user.surfboards.build(surfboard_params)


    if @surfboard.save
      render json: @surfboard, status: :created, location: @surfboard
    else
      render json: @surfboard.errors, status: :unprocessable_entity
    end
  end

  def set_surfboard
    @surfboard = current_user.surfboards.find(params[:id])
  end

  def surfboard_params
    params.require(:surfboard).permit(:height, :shape, :fin_setup)
    # params.require(:surfboard)
  end

  # private :set_surfboard, :surfboard_params
end
