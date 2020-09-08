p1 = Patient.create(name: 'Cierra Vega')
Patient.create(name: 'Alden Cantrell')
Patient.create(name: 'Kierra Gentry')

ProgressNote.create(session_date: '2020-08-03', patient: p1, notes: "STG1: named vocabulary in pictures\n/sh/ IWP imitative -++--+++-+ 6/10 60%\nerrors: sheep, she, shape, shake")
ProgressNote.create(session_date: '2020-08-10', patient: p1, notes: "STG1: named vocabulary in pictures\n/sh/ IWP imitative +++--+++-+ 7/10 60%\nerrors: sheep, shape, shake")
ProgressNote.create(session_date: '2020-08-17', patient: p1, notes: "STG1: named vocabulary in pictures\n/sh/ IWP imitative +++--+++-+ 7/10 60%\nerrors: sheep, shape, shake")
ProgressNote.create(session_date: '2020-08-24', patient: p1, notes: "STG1: named vocabulary in pictures\n/sh/ IWP imitative ++++-+++-+ 8/10 60%\nerrors: sheep, shape")
ProgressNote.create(session_date: '2020-08-31', patient: p1, notes: "STG2: named vocabulary in words\n/sh/ IWP imitative +++--+++-+ 7/10 60%\nerrors: sheep, shape, shake")
