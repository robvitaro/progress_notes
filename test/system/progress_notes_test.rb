require "application_system_test_case"

class ProgressNotesTest < ApplicationSystemTestCase
  setup do
    @progress_note = progress_notes(:one)
  end

  test "visiting the index" do
    visit progress_notes_url
    assert_selector "h1", text: "Progress Notes"
  end

  test "creating a Progress note" do
    visit progress_notes_url
    click_on "New Progress Note"

    fill_in "Notes", with: @progress_note.notes
    fill_in "Patient", with: @progress_note.patient_id
    click_on "Create Progress note"

    assert_text "Progress note was successfully created"
    click_on "Back"
  end

  test "updating a Progress note" do
    visit progress_notes_url
    click_on "Edit", match: :first

    fill_in "Notes", with: @progress_note.notes
    fill_in "Patient", with: @progress_note.patient_id
    click_on "Update Progress note"

    assert_text "Progress note was successfully updated"
    click_on "Back"
  end

  test "destroying a Progress note" do
    visit progress_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Progress note was successfully destroyed"
  end
end
