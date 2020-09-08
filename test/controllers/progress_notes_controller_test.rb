require 'test_helper'

class ProgressNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @progress_note = progress_notes(:one)
  end

  test "should get index" do
    get progress_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_progress_note_url
    assert_response :success
  end

  test "should create progress_note" do
    assert_difference('ProgressNote.count') do
      post progress_notes_url, params: { progress_note: { notes: @progress_note.notes, session_date: '2020-09-08', patient_id: @progress_note.patient_id } }
    end

    assert_redirected_to progress_note_url(ProgressNote.last)
  end

  test "should show progress_note" do
    get progress_note_url(@progress_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_progress_note_url(@progress_note)
    assert_response :success
  end

  test "should update progress_note" do
    patch progress_note_url(@progress_note), params: { progress_note: { notes: @progress_note.notes, patient_id: @progress_note.patient_id } }
    assert_redirected_to progress_note_url(@progress_note)
  end

  test "should destroy progress_note" do
    assert_difference('ProgressNote.count', -1) do
      delete progress_note_url(@progress_note)
    end

    assert_redirected_to progress_notes_url
  end
end
