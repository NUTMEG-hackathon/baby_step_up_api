class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: { status: 'SUCCESS', message: 'Loaded posts', data: users }
  end
  
  def get_user_reset_time
    @user = User.find(params[:user_id])
    reset_time = @user.reset_time
    render json: {reset_time: reset_time}
  end

  def get_user_template_list
    @user = User.find(params[:user_id])
    templates = @user.templates
    favorites_raw = @user.favorite_templates
    favorites = []
    for favorite_raw in favorites_raw
      favorite = favorite_raw.template
      favorites << favorite
    end
    render json: {
      templates: templates,
      favorites: favorites
    }
  end

  def get_user_doing_step
    @user = User.find(params[:user_id])
    select_template = @user.select_template
    doing_step = @user.doing_step
    steps = Template.all.find(select_template).steps
    return_doing_step = steps[doing_step-1]
    render json: {
      doing_step: return_doing_step
    }
  end

  def get_user_next_step
    @user = User.find(params[:user_id])
    select_template = @user.select_template
    doing_step = @user.doing_step
    steps = Template.all.find(select_template).steps
    step_length = steps.length
    if doing_step != step_length
      next_step = steps[doing_step]
      doing_step += 1
      render json: {
        next_step: next_step,
      }
      @user.doing_step = doing_step
      @user.save!
    else
      render json: {
        step_length: step_length,
        doing_step: doing_step
      }
    end
  end


  def update_select_template
    @user = User.find(update_select_template_params[:user_id])
    @user.select_template = update_select_template_params[:select_template]
    @user.save!
  end

  def update_doing_step
    @user = User.find(update_doing_step_params[:user_id])
    @user.doing_step = update_doing_step_params[:doing_step]
    @user.save!
  end

  def update_reset_time
    @user = User.find(update_reset_time_params[:user_id])
    @user.reset_time = update_reset_time_params[:reset_time]
    @user.save!
  end

  private
  
    def update_select_template_params
      params.permit(:user_id, :select_template)
    end

    def update_doing_step_params
      params.permit(:user_id, :doing_step)
    end

    def update_reset_time_params
      params.permit(:user_id, :reset_time)
    end

end

