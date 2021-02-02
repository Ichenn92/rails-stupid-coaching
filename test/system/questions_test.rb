require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask tell something normal" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask!"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test "visiting /ask ask question" do
    visit ask_url
    fill_in "question", with: "Do you like flowers?"
    click_on "Ask!"

    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end

  test "visiting /ask tell go to work" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask!"

    assert_text "Great!"
    take_screenshot
  end
end
