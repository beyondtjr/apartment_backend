class ApartmentsController < ApplicationController
  # before_action :set_corgi, only: [:show, :update, :destroy]
  def index
    @apartments = Apartment.all

    render json: @apartments
  end

  # GET /corgis/1
  def show
    @apartment = Apartment.find(params[:id])
    render json: @apartment
  end
#
#   # POST /corgis
  def create
    @apartment = Apartment.new(params.require(:apartment).permit(:street,:unit,:manager_name, :hours, :phone_number, :city, :state, :country, :postalcode))

    if @apartment.save
      render json: @apartment, status: :created, location: @apartment
    else
      render json: @apartment.errors, status: :unprocessable_entity
    end
  end
#
#   # PATCH/PUT /corgis/1
#   def update
#     if @corgi.update(corgi_params)
#       render json: @corgi
#     else
#       render json: @corgi.errors, status: :unprocessable_entity
#     end
#   end
#
#   # DELETE /corgis/1
#   def destroy
#     @corgi.destroy
#   end
#
#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_corgi
#       @corgi = Corgi.find(params[:id])
#     end
#
#     # Only allow a trusted parameter "white list" through.
#     def corgi_params
#       params.require(:corgi).permit(:name,:age,:enjoys)
#     end
# end
end
