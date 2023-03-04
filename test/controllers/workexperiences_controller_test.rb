require "test_helper"

class WorkexperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workexperience = workexperiences(:one)
  end

  test "should get index" do
    get workexperiences_url
    assert_response :success
  end

  test "should get new" do
    get new_workexperience_url
    assert_response :success
  end

  test "should create workexperience" do
    assert_difference("Workexperience.count") do
      post workexperiences_url, params: { workexperience: { company: @workexperience.company, designation: @workexperience.designation, details: @workexperience.details, end: @workexperience.end, start: @workexperience.start } }
    end

    assert_redirected_to workexperience_url(Workexperience.last)
  end

  test "should show workexperience" do
    get workexperience_url(@workexperience)
    assert_response :success
  end

  test "should get edit" do
    get edit_workexperience_url(@workexperience)
    assert_response :success
  end

  test "should update workexperience" do
    patch workexperience_url(@workexperience), params: { workexperience: { company: @workexperience.company, designation: @workexperience.designation, details: @workexperience.details, end: @workexperience.end, start: @workexperience.start } }
    assert_redirected_to workexperience_url(@workexperience)
  end

  test "should destroy workexperience" do
    assert_difference("Workexperience.count", -1) do
      delete workexperience_url(@workexperience)
    end

    assert_redirected_to workexperiences_url
  end
end
