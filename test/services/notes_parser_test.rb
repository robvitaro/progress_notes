require 'test_helper'

class NotesParserTest < ActiveSupport::TestCase
  test "it extracts list of errors" do
    notes = "errors: sheep, she, shape\nerrors: swim, kick, catch, throw"
    parser = NotesParser.new(ProgressNote.new(notes: notes))
    assert_equal %w[sheep she shape swim kick catch throw], parser.call
  end
end
