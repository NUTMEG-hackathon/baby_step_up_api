require 'test_helper'

class FavoriteTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_template = favorite_templates(:one)
  end

  test "should get index" do
    get favorite_templates_url, as: :json
    assert_response :success
  end

  test "should create favorite_template" do
    assert_difference('FavoriteTemplate.count') do
      post favorite_templates_url, params: { favorite_template: { template_id: @favorite_template.template_id, user_id: @favorite_template.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show favorite_template" do
    get favorite_template_url(@favorite_template), as: :json
    assert_response :success
  end

  test "should update favorite_template" do
    patch favorite_template_url(@favorite_template), params: { favorite_template: { template_id: @favorite_template.template_id, user_id: @favorite_template.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy favorite_template" do
    assert_difference('FavoriteTemplate.count', -1) do
      delete favorite_template_url(@favorite_template), as: :json
    end

    assert_response 204
  end
end
