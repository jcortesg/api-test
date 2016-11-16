class V1::Admin::TripsController < V1::Admin::BaseController
  def index
    render json: Trip.all
  end

  def create
    trip = Trip.new(trip_params)
    if trip.save
      render json: trip
    else
      render json: trip.erros, status: :unprocessable_entity
    end
  end

  def update
    trip = Trip.find(params[:id])
    if trip.update_attributes(trip_params)
      render json: trip
    else
      render json: trip.erros, status: :unprocessable_entity
    end
  end

  private
  def trip_params
    params.require(:user).permit(
      :name,
      :date,
      :place)
  end
end
