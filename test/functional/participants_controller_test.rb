require 'test_helper'

class ParticipantsControllerTest < ActionController::TestCase
  setup do
    @participant = participants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:participants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participant" do
    assert_difference('Participant.count') do
      post :create, participant: { born_in_year: @participant.born_in_year, email: @participant.email, gender: @participant.gender, gmail_address: @participant.gmail_address, name: @participant.name, phone_number: @participant.phone_number, sip_address: @participant.sip_address, skype_user: @participant.skype_user, topic_description: @participant.topic_description, topic_keywords: @participant.topic_keywords }
    end

    assert_redirected_to participant_path(assigns(:participant))
  end

  test "should show participant" do
    get :show, id: @participant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @participant
    assert_response :success
  end

  test "should update participant" do
    put :update, id: @participant, participant: { born_in_year: @participant.born_in_year, email: @participant.email, gender: @participant.gender, gmail_address: @participant.gmail_address, name: @participant.name, phone_number: @participant.phone_number, sip_address: @participant.sip_address, skype_user: @participant.skype_user, topic_description: @participant.topic_description, topic_keywords: @participant.topic_keywords }
    assert_redirected_to participant_path(assigns(:participant))
  end

  test "should destroy participant" do
    assert_difference('Participant.count', -1) do
      delete :destroy, id: @participant
    end

    assert_redirected_to participants_path
  end
end
