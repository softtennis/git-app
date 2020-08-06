require 'test_helper'

class ArteiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arteicle = arteicles(:one)
  end

  test "should get index" do
    get arteicles_url
    assert_response :success
  end

  test "should get new" do
    get new_arteicle_url
    assert_response :success
  end

  test "should create arteicle" do
    assert_difference('Arteicle.count') do
      post arteicles_url, params: { arteicle: { author: @arteicle.author, text: @arteicle.text, title: @arteicle.title } }
    end

    assert_redirected_to arteicle_url(Arteicle.last)
  end

  test "should show arteicle" do
    get arteicle_url(@arteicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_arteicle_url(@arteicle)
    assert_response :success
  end

  test "should update arteicle" do
    patch arteicle_url(@arteicle), params: { arteicle: { author: @arteicle.author, text: @arteicle.text, title: @arteicle.title } }
    assert_redirected_to arteicle_url(@arteicle)
  end

  test "should destroy arteicle" do
    assert_difference('Arteicle.count', -1) do
      delete arteicle_url(@arteicle)
    end

    assert_redirected_to arteicles_url
  end
end
