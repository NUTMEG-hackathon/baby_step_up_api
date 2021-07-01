require 'test_helper'

class DoneStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @done_step = done_steps(:one)
  end

  test "should get index" do
    get done_steps_url, as: :json
    assert_response :success
  end

  test "should create done_step" do
    assert_difference('DoneStep.count') do
      post done_steps_url, params: { done_step: { step_id: @done_step.step_id, user_id: @done_step.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show done_step" do
    get done_step_url(@done_step), as: :json
    assert_response :success
  end

  test "should update done_step" do
    patch done_step_url(@done_step), params: { done_step: { step_id: @done_step.step_id, user_id: @done_step.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy done_step" do
    assert_difference('DoneStep.count', -1) do
      delete done_step_url(@done_step), as: :json
    end

    assert_response 204
  end
end
