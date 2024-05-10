require "test_helper"

class EventAttendingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get event_attendings_new_url
    assert_response :success
  end

  test "should get create" do
    get event_attendings_create_url
    assert_response :success
  end

  test "should get show" do
    get event_attendings_show_url
    assert_response :success
  end

  test "should get edit" do
    get event_attendings_edit_url
    assert_response :success
  end

  test "should get update" do
    get event_attendings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get event_attendings_destroy_url
    assert_response :success
  end
end
