p1 = Patient.create(name: 'Cierra Vega')
Patient.create(name: 'Alden Cantrell')
Patient.create(name: 'Kierra Gentry')

ProgressNote.create(session_date: '2020-08-03', patient: p1, notes: "STG1: named vocabulary in pictures\n/sh/ IWP imitative -++--+++-+ 6/10 60%\nerrors: sheep, she, shape, shake")
ProgressNote.create(session_date: '2020-08-10', patient: p1, notes: "STG1: named vocabulary in pictures\n/sh/ IWP imitative +++--+++-+ 7/10 70%\nerrors: sheep, shape, shake")
ProgressNote.create(session_date: '2020-08-17', patient: p1, notes: "STG1: named vocabulary in pictures\n/sh/ IWP imitative +++--+++-+ 7/10 70%\nerrors: sheep, shape, shake\n/ch/ IWP imitative ++++-+++-+ 8/10 70%\nerrors: cheese, chop")
ProgressNote.create(session_date: '2020-08-24', patient: p1, notes: "STG1: named vocabulary in pictures\n/sh/ IWP imitative ++++-+++-+ 8/10 80%\nerrors: sheep, shape\n/ch/ IWP imitative ++++-+++-+ 8/10 80%\nerrors: cheese, chop")
ProgressNote.create(session_date: '2020-08-31', patient: p1, notes: "STG2: named vocabulary in words\n/sh/ IWP imitative +++--+++-+ 7/10 70%\nerrors: sheep, shape, shake\n/ch/ IWP imitative ++++++++-+ 9/10 90%\nerrors: cheese")
