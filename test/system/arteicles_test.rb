require "application_system_test_case"

class ArteiclesTest < ApplicationSystemTestCase
  setup do
    @arteicle = arteicles(:one)
  end

  test "visiting the index" do
    visit arteicles_url
    assert_selector "h1", text: "Arteicles"
  end

  test "creating a Arteicle" do
    visit arteicles_url
    click_on "New Arteicle"

    fill_in "Author", with: @arteicle.author
    fill_in "Text", with: @arteicle.text
    fill_in "Title", with: @arteicle.title
    click_on "Create Arteicle"

    assert_text "Arteicle was successfully created"
    click_on "Back"
  end

  test "updating a Arteicle" do
    visit arteicles_url
    click_on "Edit", match: :first

    fill_in "Author", with: @arteicle.author
    fill_in "Text", with: @arteicle.text
    fill_in "Title", with: @arteicle.title
    click_on "Update Arteicle"

    assert_text "Arteicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Arteicle" do
    visit arteicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arteicle was successfully destroyed"
  end
end
