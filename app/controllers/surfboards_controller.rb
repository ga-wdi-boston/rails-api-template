# Surfboard controller
class SurfboardsController < ProtectedController
  # skip_before_action :authenticate, only: [:index]
  before_action :authenticate, only: [:create, :show, :index]
  # Unauthenticated

  def index
    # render json: Surfboard.all
    @surfboards = current_user.surfboards

    render json: @surfboards
  end

  # def show
  #   @surfboard = current_user.surfboards.find(params[:user_id])
  #
  #   render json: @surfboard
  # end
  # WORKING VERSION BELOW
  def show
    render json: Surfboard.find(params[:id])
  end

  # Require Authentication
  def create
    # binding.pry
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

  private :set_surfboard, :surfboard_params
end
