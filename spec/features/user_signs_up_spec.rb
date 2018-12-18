require 'rails_helper'
require 'faker'

RSpec.feature "User signs up" do
  scenario "enters valid personal data" do

    visit '/'
    fill_in "user_first_name", with: Faker::Name.first_name
    fill_in "user_last_name", with: Faker::Name.last_name
    fill_in "user_street_address", with: Faker::Address.street_address
    fill_in "user_city", with: Faker::Address.city
    select Faker::Address.state, from: "user_state_abbr"
    fill_in "user_zip_code", with: Faker::Address.zip_code
    fill_in "user_email", with: Faker::Internet.email
    click_on "Submit"
    expect(page).to have_content "Thank you for submitting your information. Enjoy your ride!"
  end
end