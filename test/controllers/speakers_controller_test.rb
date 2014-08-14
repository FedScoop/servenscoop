require 'test_helper'

class SpeakersControllerTest < ActionController::TestCase
  setup do
    @speaker = speakers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:speakers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create speaker" do
    assert_difference('Speaker.count') do
      post :create, speaker: { employer: @speaker.employer, first_name: @speaker.first_name, job_title: @speaker.job_title, last_name: @speaker.last_name, photo_url: @speaker.photo_url, suffix: @speaker.suffix, title: @speaker.title }
    end

    assert_redirected_to speaker_path(assigns(:speaker))
  end

  test "should show speaker" do
    get :show, id: @speaker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @speaker
    assert_response :success
  end

  test "should update speaker" do
    patch :update, id: @speaker, speaker: { employer: @speaker.employer, first_name: @speaker.first_name, job_title: @speaker.job_title, last_name: @speaker.last_name, photo_url: @speaker.photo_url, suffix: @speaker.suffix, title: @speaker.title }
    assert_redirected_to speaker_path(assigns(:speaker))
  end

  test "should destroy speaker" do
    assert_difference('Speaker.count', -1) do
      delete :destroy, id: @speaker
    end

    assert_redirected_to speakers_path
  end
end
