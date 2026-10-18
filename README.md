# fitness-dashboard

Log workouts as plain Markdown on your phone, and get a static HTML/CSS dashboard that works on any device: recent sessions, the last time each muscle group was trained, bodyweight trend, and progress on the main lifts (bench, leg press, dumbbell press, pulldown).

No app, no account: a shell parser turns each day's log into rows in a SQLite database, and a second script renders the dashboard from it.

## The log format

I write logs in [Markor](https://github.com/gsantner/markor) on Android, one file per session, synced to the computer. The prefixes tell the parser what each line is, and the file still reads well in any Markdown viewer:

```markdown
# 2024-05-14
Mood: good
Focus: strength
Diet: normal
Bodyweight: 74

## Chest
### Bench Press
60kg
- 10
- 8
### Dumbbell Press
22kg
- 12
```

`#` is the date, `##` the muscle group, `###` the exercise, a line ending in `kg` the weight, and each `- n` a set of n reps.

## Setup

```bash
mkdir -p ~/Workouts/Dashboard
sqlite3 ~/Workouts/Dashboard/workouts.db \
  "CREATE TABLE lifts (Date TEXT, Exercise TEXT, Weight REAL, Reps INTEGER, Focus TEXT, Mood TEXT, Diet TEXT, MYWEIGHT REAL, Muscle TEXT);"
```

Drop a log file into `~/Workouts`, then:

```bash
./workoutlog-parser        # imports the oldest *.md, archives it, rebuilds the dashboard
```

`~/Workouts/Dashboard/dash.html` is the result. Set `WO_DIR` (where logs arrive) and `WO_PATH` (where the database and dashboard live) to use other folders. The scripts need bash 4 or later and `sqlite3`.

## Licence

GPL-2.0, see [LICENSE](LICENSE).
