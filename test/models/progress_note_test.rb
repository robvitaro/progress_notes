require 'test_helper'

class ProgressNoteTest < ActiveSupport::TestCase
  test "it creates Scores if applicable" do
    note = ProgressNote.new(session_date: '2020-09-08',
                            notes: "/sh/ IWP imitative -++--+++-+ 6/10 60%\nerrors: sheep, she, shape",
                            patient: patients(:one))
    assert_difference 'Score.count', 1 do
      note.save!
    end
  end

  test "it creates Goals if applicable" do
    note = ProgressNote.new(session_date: '2020-09-08',
                            notes: "STG1: named vocabulary in pictures\n/sh/ IWP imitative -++--+++-+ 6/10 60%\nerrors: sheep, she, shape",
                            patient: patients(:one))
    assert_difference 'Goal.count', 1 do
      note.save!
    end
  end

  test "it creates WordErrors if applicable" do
    note = ProgressNote.new(session_date: '2020-09-08',
                            notes: "/sh/ IWP imitative -++--+++-+ 6/10 60%\nerrors: sheep, she, shape",
                            patient: patients(:one))
    assert_difference 'WordError.count', 3 do
      note.save!
    end
  end
end
