# Surfboard controller
class SurfboardsController < ProtectedController
  skip_before_action :authenticate, only: [:show, :index]
  before_action :authenticate, only: [:create]
  # show
  def show
    render json: @surfboard
  end

  def create
    @surfboard = Surfboard.create(surfboard_params)
    render json: @surfboard
  end

  private

  def authenticate
    authenticate_or_request_with_http_token do |token|
      token == TOKEN
    end
  end

  # def authenticate
  #   token = params[:token]
  #   @current_user = User.find_by token: token
  #   head :unauthorized unless current_user
  # end

  def set_surfboard
    @surfboard = Surfboard.find(params[:id])
  end

  def surfboard_params
    params.require(:surfboard).permit(:height, :shape, :fin_setup)
  end
end
