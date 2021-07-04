class Api::V1::TemplateApiController < ApplicationController
  def get_template_step_list
    @template = Template.find(params[:template_id])
    steps = @template.steps
    render json: {steps: steps}
  end
end

