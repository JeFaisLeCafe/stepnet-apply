class Api::V1::DriversController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_driver, only: [ :show, :update ]

  def index
    @drivers = policy_scope(Driver)
  end

  def show
  end

  def update
    if @driver.update(driver_params)
      render :show
    else
      render_error
    end
  end

  private

  def set_driver
    @driver = Driver.find(params[:id])
    authorize @driver
  end

  def driver_params
    params.require(:driver).permit(:firstname, :lastname, :phone, :company, :vehicule)
  end

  def render_error
    render json: { errors: @driver.errors.full_message }, status: :unprocessable_entity
  end
end
