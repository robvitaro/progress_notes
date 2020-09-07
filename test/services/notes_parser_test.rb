require 'test_helper'

class NotesParserTest < ActiveSupport::TestCase
  test "it extracts list of errors" do
    notes = "errors: sheep, she, shape\nerrors: swim, kick, catch, throw"
    parser = NotesParser.new(ProgressNote.new(notes: notes))
    parser.call
    assert_equal %w[sheep she shape swim kick catch throw], parser.errors
  end

  test "it extracts scores" do
    notes = "/sh/ IWP imitative -++--+++-+ 6/10 60%\n/ch/ IWP imitative +++-++++-+ 8/10 80%"
    parser = NotesParser.new(ProgressNote.new(notes: notes))
    parser.call
    expected = {
        "/sh/ IWP imitative" => 0.6,
        "/ch/ IWP imitative" => 0.8
    }
    assert_equal expected, parser.scores
  end
end
