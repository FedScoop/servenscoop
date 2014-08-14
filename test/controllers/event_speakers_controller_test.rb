require 'test_helper'

class EventSpeakersControllerTest < ActionController::TestCase
  setup do
    @event_speaker = event_speakers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_speakers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_speaker" do
    assert_difference('EventSpeaker.count') do
      post :create, event_speaker: { event: @event_speaker.event, speaker: @event_speaker.speaker }
    end

    assert_redirected_to event_speaker_path(assigns(:event_speaker))
  end

  test "should show event_speaker" do
    get :show, id: @event_speaker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_speaker
    assert_response :success
  end

  test "should update event_speaker" do
    patch :update, id: @event_speaker, event_speaker: { event: @event_speaker.event, speaker: @event_speaker.speaker }
    assert_redirected_to event_speaker_path(assigns(:event_speaker))
  end

  test "should destroy event_speaker" do
    assert_difference('EventSpeaker.count', -1) do
      delete :destroy, id: @event_speaker
    end

    assert_redirected_to event_speakers_path
  end
end
