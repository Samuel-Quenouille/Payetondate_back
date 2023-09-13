require "test_helper"

class TestimoniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testimony = testimonies(:one)
  end

  test "should get index" do
    get testimonies_url, as: :json
    assert_response :success
  end

  test "should create testimony" do
    assert_difference("Testimony.count") do
      post testimonies_url, params: { testimony: { description: @testimony.description } }, as: :json
    end

    assert_response :created
  end

  test "should show testimony" do
    get testimony_url(@testimony), as: :json
    assert_response :success
  end

  test "should update testimony" do
    patch testimony_url(@testimony), params: { testimony: { description: @testimony.description } }, as: :json
    assert_response :success
  end

  test "should destroy testimony" do
    assert_difference("Testimony.count", -1) do
      delete testimony_url(@testimony), as: :json
    end

    assert_response :no_content
  end
end
