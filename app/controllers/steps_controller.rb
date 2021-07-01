class StepsController < ApplicationController
  before_action :set_step, only: %i[ show update destroy ]

  # GET /steps
  # GET /steps.json
  def index
    @steps = Step.all
    render json: @steps
  end

  # GET /steps/1
  # GET /steps/1.json
  def show
    render json: @step
  end

  # POST /steps
  # POST /steps.json
  def create
    @step = Step.new(step_params)
    @step.save
    render json: @step
  end

  # PATCH/PUT /steps/1
  # PATCH/PUT /steps/1.json
  def update
    @step.update(step_params)
    render json: @step
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = Step.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def step_params
      params.permit(:title, :template_id)
    end
end
