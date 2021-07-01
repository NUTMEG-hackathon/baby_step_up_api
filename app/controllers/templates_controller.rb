class TemplatesController < ApplicationController
  before_action :set_template, only: %i[ show update destroy ]

  # GET /templates
  # GET /templates.json
  def index
    @templates = Template.all
    render json: @templates
  end

  # GET /templates/1
  # GET /templates/1.json
  def show
    render json: @template
  end

  # POST /templates
  # POST /templates.json
  def create
    @template = Template.new(template_params)
    @template.save
    render json: @template
  end

  # PATCH/PUT /templates/1
  # PATCH/PUT /templates/1.json
  def update
    @template.update(template_params)
    render json: @template
  end

  # DELETE /templates/1
  # DELETE /templates/1.json
  def destroy
    @template.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template
      @template = Template.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def template_params
      params.permit(:title, :user_id)
    end
end
