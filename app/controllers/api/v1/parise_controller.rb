module Api
  module V1
    class PariseController < ApplicationController
      before_action :set_parise, only: [:show, :update, :destroy]

    # GET /parise
    def index
      @parises = Parise.all

      render json: @paraises
    end

    # GET /diaries/1/parise
    def show
      render json: @parise
    end

    # POST /diaries
    def create
      @parise = Parise.new(parise_params)

      if @parise.save
        render json: @parise, status: :created, location: @parise
      else
        render json: @parise.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /diaries/1
    def update
      if @parise.update(parise_params)
        render json: @parise
      else
        render json: @parise.errors, status: :unprocessable_entity
      end
    end

    # DELETE /diaries/1
    def destroy
      @parise.destroy
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parise
      @parise = Parise.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parise_params
      params.require(:diary).permit(:content, :diary)
    end
  end
end