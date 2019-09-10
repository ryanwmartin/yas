require "application_system_test_case"

class DonorsTest < ApplicationSystemTestCase
  setup do
    @donor = donors(:one)
  end

  test "visiting the index" do
    visit donors_url
    assert_selector "h1", text: "Donors"
  end

  test "creating a Donor" do
    visit donors_url
    click_on "New Donor"

    fill_in "Donation amount", with: @donor.donation_amount
    fill_in "Email", with: @donor.email
    fill_in "First name", with: @donor.first_name
    fill_in "Last name", with: @donor.last_name
    fill_in "Middle name", with: @donor.middle_name
    fill_in "Phone", with: @donor.phone
    fill_in "Project", with: @donor.project
    fill_in "Status", with: @donor.status
    click_on "Create Donor"

    assert_text "Donor was successfully created"
    click_on "Back"
  end

  test "updating a Donor" do
    visit donors_url
    click_on "Edit", match: :first

    fill_in "Donation amount", with: @donor.donation_amount
    fill_in "Email", with: @donor.email
    fill_in "First name", with: @donor.first_name
    fill_in "Last name", with: @donor.last_name
    fill_in "Middle name", with: @donor.middle_name
    fill_in "Phone", with: @donor.phone
    fill_in "Project", with: @donor.project
    fill_in "Status", with: @donor.status
    click_on "Update Donor"

    assert_text "Donor was successfully updated"
    click_on "Back"
  end

  test "destroying a Donor" do
    visit donors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Donor was successfully destroyed"
  end
end
