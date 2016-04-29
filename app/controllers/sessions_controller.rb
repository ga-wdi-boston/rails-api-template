# sessions controller
class SessionsController < ProtectedController
  skip_before_action :authenticate, only: [:show, :index]
  before_action :authenticate, only: [:create, :update]

  def index
    @sessions = Session.all

    render json: @sessions
  end

  def show
    render json: Session.find(params[:id])
  end

  def create
    @session = current_user.sessions.build(session_params)

    if @session.save
      render json: @session, status: :created, location: @session
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  def set_session
    @session = current_user.sessions.find(params[:id])
  end

  def session_params
    params.require(:session).permit(:spot, :day, :conditions, :surfboard_id)
  end

  private :set_session, :session_params
end
