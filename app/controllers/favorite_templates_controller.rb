class FavoriteTemplatesController < ApplicationController
  before_action :set_favorite_template, only: %i[ show update destroy ]

  # GET /favorite_templates
  # GET /favorite_templates.json
  def index
    @favorite_templates = FavoriteTemplate.all
    render json: @favorite_templates
  end

  # GET /favorite_templates/1
  # GET /favorite_templates/1.json
  def show
    render json: @favorite_template
  end

  # POST /favorite_templates
  # POST /favorite_templates.json
  def create
    @favorite_template = FavoriteTemplate.new(favorite_template_params)
    @favorite_template.save
    render json: @favorite_template
  end

  # PATCH/PUT /favorite_templates/1
  # PATCH/PUT /favorite_templates/1.json
  def update
    @favorite_template.update(favorite_template_params)
    render json: @favorite_template
  end

  # DELETE /favorite_templates/1
  # DELETE /favorite_templates/1.json
  def destroy
    @favorite_template.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_template
      @favorite_template = FavoriteTemplate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_template_params
      params.permit(:user_id, :template_id)
    end
end
