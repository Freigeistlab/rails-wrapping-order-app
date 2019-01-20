class OrdersController < ApplicationController
  require 'net/http'

  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  def success
  end
 
  def place_order
    @order = current_order
    if @order.order_items.count < 1
      flash[:alert] = "Es wurden noch keine Verpackungsmaterialien ausgewählt."
    else
      @order.order_status_id = 2
      session.delete(:order_id)
      send_order_as_post_request
      redirect_to success_order_path
      # flash[:success] = "Bestellung ist eingegangen und wird bearbeitet. Die Bestätigung bitte am Drucker abholen und den Anweisungen folgen."
    end
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:subtotal, :tax, :shipping, :total, :order_status_id)
    end

    def send_order_as_post_request

      uri = URI.parse('http://localhost:5000/order')
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Post.new(uri.request_uri)
      request.body = {id: 1, order_products: {"paper": "test"}}.to_json

      # Tweak headers, removing this will default to application/x-www-form-urlencoded
      request["Content-Type"] = "application/json"

      res = http.request(request)

      case res
      when Net::HTTPSuccess, Net::HTTPRedirection
        logger.info "success posted"
      else
        res.value
      end
    end
end
