require 'test_helper'

class Api::Vi::PlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_vi_place = api_vi_places(:one)
  end

  test "should get index" do
    get api_vi_places_url, as: :json
    assert_response :success
  end

  test "should create api_vi_place" do
    assert_difference('Api::Vi::Place.count') do
      post api_vi_places_url, params: { api_vi_place: { comment: @api_vi_place.comment, title: @api_vi_place.title } }, as: :json
    end

    assert_response 201
  end

  test "should show api_vi_place" do
    get api_vi_place_url(@api_vi_place), as: :json
    assert_response :success
  end

  test "should update api_vi_place" do
    patch api_vi_place_url(@api_vi_place), params: { api_vi_place: { comment: @api_vi_place.comment, title: @api_vi_place.title } }, as: :json
    assert_response 200
  end

  test "should destroy api_vi_place" do
    assert_difference('Api::Vi::Place.count', -1) do
      delete api_vi_place_url(@api_vi_place), as: :json
    end

    assert_response 204
  end
end
