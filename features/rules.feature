Feature: Rules

  Scenario: Use of 'he/she' and the like
    When I test "Gender"
    Then the output should contain exactly:
      """
      test.md:3:6:Google.Gender:Don't use 'he/she' as a gender-neutral pronoun.
      """

  Scenario: Use of AM and PM
    When I test "AMPM"
    Then the output should contain exactly:
      """
      test.md:3:14:Google.AMPM:Use 'AM' or 'PM' (preceded by a space).
      test.md:5:18:Google.AMPM:Use 'AM' or 'PM' (preceded by a space).
      """

  Scenario: Usage of terms
    When I test "Terms"
    Then the output should contain exactly:
      """
      test.md:9:1:Google.FirstPerson:Avoid first-person pronouns such as 'I '.
      test.md:17:1:Google.FirstPerson:Avoid first-person pronouns such as 'I '.
      test.md:19:13:Google.FirstPerson:Avoid first-person pronouns such as 'me'.
      test.md:21:1:Google.Slang:Don't use internet slang abbreviations such as 'TL;DR'.
      test.md:21:19:Google.Slang:Don't use internet slang abbreviations such as 'RTFM'.
      test.md:23:21:Google.Slang:Don't use internet slang abbreviations such as 'IMO'.
      test.md:25:1:Google.Will:Avoid using 'Will'.
      test.md:25:18:Google.FirstPerson:Avoid first-person pronouns such as 'my'.
      test.md:27:1:Google.FirstPerson:Avoid first-person pronouns such as 'I '.
      test.md:27:3:Google.Spelling:In general, use American spelling instead of 'organised'.
      test.md:29:21:Google.WordList:Use 'preceding' instead of 'above'.
      test.md:31:1:Google.FirstPerson:Avoid first-person pronouns such as 'I '.
      test.md:31:8:Google.FirstPerson:Avoid first-person pronouns such as 'my'.
      test.md:31:11:Google.WordList:Use 'phone' or 'mobile phone' instead of 'cell phone'.
      """

  Scenario: Use of contractions
    When I test "Contractions"
    Then the output should contain exactly:
      """
      test.md:3:1:Google.Contractions:Feel free to use 'it's' instead of 'It is'.
      """

  Scenario: Use of dashes
    When I test "Dashes"
    Then the output should contain exactly:
      """
      test.md:5:1:Google.Ranges:Don't add words such as 'from' or 'between' to describe a range of numbers.
      """

  Scenario: Use of units
    When I test "Units"
    Then the output should contain exactly:
      """
      test.md:5:10:Google.Units:Put a nonbreaking space between the number and the unit in '64GB'.
      test.md:6:26:Google.Units:Put a nonbreaking space between the number and the unit in '30s'.
      """

  Scenario: Use of numbers
    When I test "Numbers"
    Then the output should contain exactly:
      """
      test.md:3:1:Google.Ordinal:Spell out all ordinal numbers ('1st') in text.
      test.md:3:6:Google.Ordinal:Spell out all ordinal numbers ('2nd') in text.
      test.md:3:11:Google.Ordinal:Spell out all ordinal numbers ('5th') in text.
      test.md:3:16:Google.Ordinal:Spell out all ordinal numbers ('12th') in text.
      test.md:3:22:Google.Ordinal:Spell out all ordinal numbers ('43rd') in text.
      """

  Scenario: Date Formatting
    When I test "DateFormat"
    Then the output should contain exactly:
      """
      test.md:3:6:Google.DateFormat:Use 'July 31, 2016' format, not '12 Mar 2016'.
      test.md:7:14:Google.DateFormat:Use 'July 31, 2016' format, not '6/12/2017'.
      """

  Scenario: Use of punctuation
    When I test "Punctuation"
    Then the output should contain exactly:
      """
      test.md:3:5:Google.Periods:Don't use periods with acronyms or initialisms such as 'N.B.A.'.
      test.md:5:18:Google.OptionalPlurals:Don't use plurals in parentheses such as in 'key(s)'.
      test.md:5:21:Google.Parens:Use parentheses judiciously.
      test.md:7:5:Google.Colons:': C' should be in lowercase.
      test.md:9:1:Google.OxfordComma:Use the Oxford comma in 'I dedicate this book to my parents, Ayn, Rand and'.
      test.md:11:46:Google.EmDash:Don't put a space before or after a dash.
      test.md:13:24:Google.EmDash:Don't put a space before or after a dash.
      test.md:13:25:Google.EnDash:Use an em dash ('—') instead of '–'.
      test.md:13:32:Google.Exclamation:Don't use exclamation points in text.
      test.md:15:5:Google.Ellipses:In general, don't use an ellipsis.
      test.md:17:11:Google.Exclamation:Don't use exclamation points in text.
      test.md:19:18:Google.LyHyphens:' publicly-' doesn't need a hyphen.
      test.md:23:13:Google.Parens:Use parentheses judiciously.
      test.md:25:24:Google.Quotes:Commas and periods go inside quotation marks.
      test.md:27:34:Google.Semicolons:Use semicolons judiciously.
      test.md:27:44:Google.Exclamation:Don't use exclamation points in text.
      test.md:29:1:Google.OxfordComma:Use the Oxford comma in 'Apples, pears or'.
      test.md:33:5:Google.Exclamation:Don't use exclamation points in text.
      test.md:37:21:Google.Spacing:'y. T' should have one space.
      test.md:39:42:Google.Exclamation:Don't use exclamation points in text.
      """

  Scenario: Foreign words
    When I test "Foreign"
    Then the output should contain exactly:
      """
      test.md:3:31:Google.Latin:Use 'that is' instead of 'i.e.,'.
      """

  Scenario: Heading styles
    When I test "Headings"
    Then the output should contain exactly:
      """
      test.md:5:3:Google.Headings:'This is a Heading' should use sentence-style capitalization.
      test.md:7:13:Google.HeadingPunctuation:Don't put a period at the end of a heading.
      """

  Scenario: Passive voice
    When I test "Passive"
    Then the output should contain exactly:
      """
      test.md:3:6:Google.Passive:In general, use active voice instead of passive voice ('was broken').
      """
