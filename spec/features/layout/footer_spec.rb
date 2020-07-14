# frozen_string_literal: true

require "rails_helper"

feature "footer" do
  let(:organization) { create :organization }

  before do
    Capybara.app_host = "http://#{organization.host}:3000"
  end

  it "should display alabs logo in footer" do
    visit "/"
    expect(page).to have_css(".alabs-logo") 
  end
end
