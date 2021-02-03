class ServiceOrdersController < ApplicationController
  before_action :set_service_order, only: [:show, :update, :destroy]

  # GET /service_orders
  def index
    @service_orders = ServiceOrder.all

    render json: @service_orders
  end

  # GET /service_orders/1
  def show
    render json: @service_order
  end

  # POST /service_orders
  def create
    @service_order = ServiceOrder.generate(service_order_params)

    if @service_order.persisted?
      render json: @service_order, status: :created, location: @service_order
    else
      render json: @service_order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /service_orders/1
  def update
    if @service_order.update(service_order_params)
      render json: @service_order
    else
      render json: @service_order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /service_orders/1
  def destroy
    @service_order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_order
      @service_order = ServiceOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_order_params
      params.require(:service_order).permit(:email, :description)
    end
end
