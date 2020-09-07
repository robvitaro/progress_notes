class NotesParser
  attr_reader :notes

  def initialize(progress_note)
    @notes =progress_note.notes
  end

  def call
    scanner = StringScanner.new(notes)
    find_errors(scanner)

  end

  private

  def find_errors(scanner)
    scanner.reset
    errors = []

    until scanner.eos?
      scanner.scan_until(/errors: /)
      scanner.skip(/errors: /)
      errors_string = scanner.scan_until(/$/)
      errors << errors_string.split(', ')
    end

    errors.flatten
  end

    #
    # /sh/ IWP imitative -++--+++-+ 6/10 60%
    # errors: sheep, she, shape
    #
    # /sound/ abbrv-task tasksubtype score
    # error list
    #
    #
    #
    #
    # Expressive/Pragmatic Language - book (the tiny seed)
    # STG2: named vocabulary in pictures -visual/verbal/max cues
    # sun -+
    # fish +
    # seed +
    # bird - -
    # grass +
    # snow -
    # rain -
    # foot -
    # flower - -
    # tree +
    # Total: 5/13=38%
    #
    # task tasksubtype
    # goal
    # word score
    # word score
    #
    #
    #
    #
    # STG3: labeled vocabulary (nouns, verbs) -visual/mod cues:
    # nouns: +++++ +++ 8/8
    # errors: 0
    # verbs: ++ - - - - + 3/7
    # errors: swim, kick, catch, throw
    #
    # goal
    # word score
    # error list
    # word score
    # error list
end
