require 'test_helper'

class EggsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @egg = eggs(:one)
  end

  test "should get index" do
    get eggs_url, as: :json
    assert_response :success
  end

  test "should create egg" do
    assert_difference('Egg.count') do
      post eggs_url, params: { egg: { egg_description: @egg.egg_description, egg_movie: @egg.egg_movie, image: @egg.image, movie_id: @egg.movie_id } }, as: :json
    end

    assert_response 201
  end

  test "should show egg" do
    get egg_url(@egg), as: :json
    assert_response :success
  end

  test "should update egg" do
    patch egg_url(@egg), params: { egg: { egg_description: @egg.egg_description, egg_movie: @egg.egg_movie, image: @egg.image, movie_id: @egg.movie_id } }, as: :json
    assert_response 200
  end

  test "should destroy egg" do
    assert_difference('Egg.count', -1) do
      delete egg_url(@egg), as: :json
    end

    assert_response 204
  end
end
