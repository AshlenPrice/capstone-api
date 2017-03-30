# frozen_string_literal: true
class KitchensController < OpenReadController
  before_action :set_kitchen, only: [:update, :destroy]

  # GET /kitchens
  def index
    @kitchens = Kitchen.all
    # @profile = profile.role[1]
    render json: @kitchens
  end

  # GET /userkitchens
  def userskitchen
    @kitchens = current_user.kitchens.all
    render json: @kitchens
  end

  # GET /kitchens/1
  def show
    render json: Kitchen.find(params[:id])
  end

  # POST /kitchens
  # def create
  #   # get the profile
  #   # save it to a variable
  #   # if profile.role === whatever, build
  #   # else error
  #   @profile = current_user.profile
  #
  #   if @profile.role == :kitchen_owner
  #     @profile.kitchens.build(kitchen_params)
  #     if @kitchen.save
  #       render json: @kitchen, status: :created
  #     else
  #       render json: @kitchen.errors, status: :unprocessable_entity
  #     end
  #   end
  # end
  def create
    # @profile = current_user.profile
    # @profile.kitchens.build(kitchen_params)

    @kitchen = current_user.kitchens.build(kitchen_params)
    if @kitchen.save
      render json: @kitchen, status: :created
    else
      render json: @kitchen.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kitchens/1
  def update
    if @kitchen.update(kitchen_params)
      head :no_content
    else
      render json: @kitchen.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kitchens/1
  def destroy
    @kitchen.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_kitchen
    # @kitchen = Kitchen.find(params[:id])
    @kitchen = current_user.kitchens.find(params[:id])
  end
  private :set_kitchen

  # Only allow a trusted parameter "white list" through.
  def kitchen_params
    params.require(:kitchen).permit(:kitchen_name, :location, :phone_number,
                                    :email, :available_hours, :description)
  end
  private :kitchen_params
end
