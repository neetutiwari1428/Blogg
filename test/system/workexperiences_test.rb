require "application_system_test_case"

class WorkexperiencesTest < ApplicationSystemTestCase
  setup do
    @workexperience = workexperiences(:one)
  end

  test "visiting the index" do
    visit workexperiences_url
    assert_selector "h1", text: "Workexperiences"
  end

  test "should create workexperience" do
    visit workexperiences_url
    click_on "New workexperience"

    fill_in "Company", with: @workexperience.company
    fill_in "Designation", with: @workexperience.designation
    fill_in "Details", with: @workexperience.details
    fill_in "End", with: @workexperience.end
    fill_in "Start", with: @workexperience.start
    click_on "Create Workexperience"

    assert_text "Workexperience was successfully created"
    click_on "Back"
  end

  test "should update Workexperience" do
    visit workexperience_url(@workexperience)
    click_on "Edit this workexperience", match: :first

    fill_in "Company", with: @workexperience.company
    fill_in "Designation", with: @workexperience.designation
    fill_in "Details", with: @workexperience.details
    fill_in "End", with: @workexperience.end
    fill_in "Start", with: @workexperience.start
    click_on "Update Workexperience"

    assert_text "Workexperience was successfully updated"
    click_on "Back"
  end

  test "should destroy Workexperience" do
    visit workexperience_url(@workexperience)
    click_on "Destroy this workexperience", match: :first

    assert_text "Workexperience was successfully destroyed"
  end
end
