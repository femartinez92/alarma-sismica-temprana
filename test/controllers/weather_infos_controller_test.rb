require 'test_helper'

class WeatherInfosControllerTest < ActionController::TestCase
  setup do
    @weather_info = weather_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weather_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weather_info" do
    assert_difference('WeatherInfo.count') do
      post :create, weather_info: { generated_at: @weather_info.generated_at, humidity: @weather_info.humidity, temperature: @weather_info.temperature }
    end

    assert_redirected_to weather_info_path(assigns(:weather_info))
  end

  test "should show weather_info" do
    get :show, id: @weather_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weather_info
    assert_response :success
  end

  test "should update weather_info" do
    patch :update, id: @weather_info, weather_info: { generated_at: @weather_info.generated_at, humidity: @weather_info.humidity, temperature: @weather_info.temperature }
    assert_redirected_to weather_info_path(assigns(:weather_info))
  end

  test "should destroy weather_info" do
    assert_difference('WeatherInfo.count', -1) do
      delete :destroy, id: @weather_info
    end

    assert_redirected_to weather_infos_path
  end
end
