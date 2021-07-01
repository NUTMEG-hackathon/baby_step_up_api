class DoneStepsController < ApplicationController
  before_action :set_done_step, only: %i[ show update destroy ]

  # GET /done_steps
  # GET /done_steps.json
  def index
    @done_steps = DoneStep.all
    render json: @done_steps
  end

  # GET /done_steps/1
  # GET /done_steps/1.json
  def show
    render json: @done_step
  end

  # POST /done_steps
  # POST /done_steps.json
  def create
    @done_step = DoneStep.new(done_step_params)
    @done_step.save
    render json: @done_step
  end

  # PATCH/PUT /done_steps/1
  # PATCH/PUT /done_steps/1.json
  def update
    @done_step.update(done_step_params)
    render json: @done_step
  end

  # DELETE /done_steps/1
  # DELETE /done_steps/1.json
  def destroy
    @done_step.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_done_step
      @done_step = DoneStep.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def done_step_params
      params.permit(:step_id, :user_id)
    end
end
