require 'test_helper'

class AdminTest < ActionDispatch::IntegrationTest
  setup do
    require 'capybara/poltergeist'
    Capybara.default_driver = :poltergeist 
    Capybara.javascript_driver = :poltergeist
  end

  test 'shows root' do
    visit('/')
  end
end

