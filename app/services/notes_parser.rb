class NotesParser
  attr_reader :notes, :errors, :scores

  def initialize(progress_note)
    @notes = progress_note.notes
  end

  def call
    scanner = StringScanner.new(notes)
    @scores = find_scores(scanner)
    @errors = find_errors(scanner)
  end

  private

  def find_scores(scanner)
    scanner.reset
    scores = {}

    if scanner.exist?(/ \+| -/)
      until scanner.eos?
        word = scanner.scan_until(/ \+| -/)
        break unless word
        word = word.rpartition(/ \+| -/).first.gsub(/.*\n/,"") # Ewwww!!
        scanner.pos = scanner.pos - 1
        score_string = scanner.scan_until(/$/)
        scores[word] = get_score(score_string)
      end
    end

    scores
  end

  def get_score(string)
    return unless string

    wrong = string.scan(/-/).length
    right = string.scan(/\+/).length
    right.to_f / (right.to_f + wrong.to_f)
  end

  def find_errors(scanner)
    scanner.reset
    errors = []

    if scanner.exist?(/errors: /)
      until scanner.eos?
        more_errors = scanner.scan_until(/errors: /)
        break unless more_errors
        errors_string = scanner.scan_until(/$/)
        errors << errors_string.split(', ')
      end
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
