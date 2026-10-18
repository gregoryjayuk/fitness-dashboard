#!/bin/bash

DB_FILE="workouts.db"
WO_PATH="${WO_PATH:-$HOME/Workouts/Dashboard/}"   # folder holding workouts.db; dash.html is written here
echo '<!DOCTYPE html>' > "${WO_PATH}dash.html"
echo '<html lang="en">' >> "${WO_PATH}dash.html"
echo '<head>' >> "${WO_PATH}dash.html"
    echo '<meta charset="UTF-8">' >> "${WO_PATH}dash.html"
    echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">' >> "${WO_PATH}dash.html"
    echo '<title>Workout Dashboard</title>' >> "${WO_PATH}dash.html"
	echo '<style>' >> "${WO_PATH}dash.html"
echo 'body {' >> "${WO_PATH}dash.html"
  echo 'font-family: sans-serif;' >> "${WO_PATH}dash.html"
  echo 'background-color: #2f3742; /* Dark background */' >> "${WO_PATH}dash.html"
  echo 'color: #dfe0e4; /* Light text color */' >> "${WO_PATH}dash.html"
  echo 'margin: 20px;' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo '.container {' >> "${WO_PATH}dash.html"
  echo 'display: flex;' >> "${WO_PATH}dash.html"
  echo 'flex-wrap: wrap;' >> "${WO_PATH}dash.html"
  echo 'justify-content: space-between;' >> "${WO_PATH}dash.html"
  echo 'width: 90%;' >> "${WO_PATH}dash.html"
  echo 'margin: 0 auto;' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo '.card {' >> "${WO_PATH}dash.html"
  echo 'background-color: #202734; /* Darker card background */' >> "${WO_PATH}dash.html"
  echo 'transition: background-color 0.2s ease-in-out;  /* Add hover effect transition */' >> "${WO_PATH}dash.html"
  echo 'border-radius: 5px;' >> "${WO_PATH}dash.html"
  echo 'padding: 15px;' >> "${WO_PATH}dash.html"
  echo 'margin: 10px;' >> "${WO_PATH}dash.html"
  echo 'width: 45%;' >> "${WO_PATH}dash.html"
  echo 'text-align: center;' >> "${WO_PATH}dash.html"
  echo 'box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Subtle shadow */' >> "${WO_PATH}dash.html"
  echo 'color: #dfe0e4; /* Text color for cards */' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo '.card:hover {' >> "${WO_PATH}dash.html"
  echo 'background-color: black;  /* Change background color on hover */' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '.card-heavy {' >> "${WO_PATH}dash.html"
  echo 'background-color: #202734; /* Darker card background */' >> "${WO_PATH}dash.html"
  echo 'transition: background-color 0.2s ease-in-out;  /* Add hover effect transition */' >> "${WO_PATH}dash.html"
  echo 'border-radius: 5px;' >> "${WO_PATH}dash.html"
  echo 'padding: 15px;' >> "${WO_PATH}dash.html"
  echo 'margin: 10px;' >> "${WO_PATH}dash.html"
  echo 'width: 45%;' >> "${WO_PATH}dash.html"
  echo 'text-align: center;' >> "${WO_PATH}dash.html"
  echo 'box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Subtle shadow */' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo '.card-heavy:hover {' >> "${WO_PATH}dash.html"
  echo 'background-color: black;  /* Change background color on hover */' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo 'div.card-heavy h3 {' >> "${WO_PATH}dash.html"
echo 'font-size: 2em;  /* Adjust font size as desired (e.g., 3em for large) */' >> "${WO_PATH}dash.html"
  echo 'font-weight: bold;  /* Make the text bold */' >> "${WO_PATH}dash.html"
  echo 'color: #00FF00;  /* Neon green color */' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo 'h1, h2 {' >> "${WO_PATH}dash.html"
  echo 'margin-bottom: 10px;' >> "${WO_PATH}dash.html"
  echo 'color: #fff; /* White headings */' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo 'ul {' >> "${WO_PATH}dash.html"
  echo 'list-style: none;' >> "${WO_PATH}dash.html"
  echo 'padding: 0;' >> "${WO_PATH}dash.html"
  echo 'color: #dfe0e4; /* Text color for lists */' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo 'li {' >> "${WO_PATH}dash.html"
  echo 'margin-bottom: 5px;' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo '.bar-graph {' >> "${WO_PATH}dash.html"
  echo 'width: 100%;' >> "${WO_PATH}dash.html"
  echo 'height: 200px; /* Adjust height as needed */' >> "${WO_PATH}dash.html"
  echo 'display: flex;' >> "${WO_PATH}dash.html"
  echo 'flex-direction: row;' >> "${WO_PATH}dash.html"
  echo 'flex-wrap: wrap; /* Wrap bars to multiple rows if needed */' >> "${WO_PATH}dash.html"
  echo 'gap: 5px; /* Gap between bars and numbers */' >> "${WO_PATH}dash.html"
  echo 'font-size: 3em;  /* Adjust font size as desired (e.g., 3em for large) */' >> "${WO_PATH}dash.html"
  echo 'font-weight: bold;  /* Make the text bold */' >> "${WO_PATH}dash.html"
  echo 'color: #00FF00;  /* Neon green color */' >> "${WO_PATH}dash.html"
  echo 'text-align: center;' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo 'div.bar-graph h2 {' >> "${WO_PATH}dash.html"
  echo 'color: #0000FF;  /* Neon green color */' >> "${WO_PATH}dash.html"
  echo 'text-align: center;' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo '.day {' >> "${WO_PATH}dash.html"
  echo 'display: flex;' >> "${WO_PATH}dash.html"
  echo 'flex-direction: column;' >> "${WO_PATH}dash.html"
  echo 'align-items: center;' >> "${WO_PATH}dash.html"
  echo 'text-align: center;' >> "${WO_PATH}dash.html"
  echo 'color: #dfe0e4; /* Text color for days */' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo '.day > span.attendance-mark {' >> "${WO_PATH}dash.html"
  echo 'width: 10px;' >> "${WO_PATH}dash.html"
  echo 'height: 10px;' >> "${WO_PATH}dash.html"
  echo 'background-color: #00FF00; /* Green attendance mark (neon) */' >> "${WO_PATH}dash.html"
  echo 'margin-top: 5px; /* Adjust margin as needed */' >> "${WO_PATH}dash.html"
  echo 'border-radius: 50%; /* Circular mark */' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo '@media only screen and (max-width: 1100px) {' >> "${WO_PATH}dash.html"
  echo '.card {' >> "${WO_PATH}dash.html"
    echo 'width: 100%;  /* Make cards full width on mobile */' >> "${WO_PATH}dash.html"
  echo '}' >> "${WO_PATH}dash.html"
  echo '.card-heavy {' >> "${WO_PATH}dash.html"
    echo 'width: 100%;  /* Make cards full width on mobile */' >> "${WO_PATH}dash.html"
  echo '}' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '' >> "${WO_PATH}dash.html"
echo 'dl {' >> "${WO_PATH}dash.html"
echo 'display: flex;' >> "${WO_PATH}dash.html"
echo 'background-color: white;' >> "${WO_PATH}dash.html"
echo 'flex-direction: column;' >> "${WO_PATH}dash.html"
echo 'width: 100%;' >> "${WO_PATH}dash.html"
echo 'max-width: 700px;' >> "${WO_PATH}dash.html"
echo 'position: relative;' >> "${WO_PATH}dash.html"
echo 'padding 20px;' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo 'dt {' >> "${WO_PATH}dash.html"
echo 'align-self: flex-start;' >> "${WO_PATH}dash.html"
echo 'width: 100%;' >> "${WO_PATH}dash.html"
echo 'font-weight: 700;' >> "${WO_PATH}dash.html"
echo 'display: block;' >> "${WO_PATH}dash.html"
echo 'text-align: center;' >> "${WO_PATH}dash.html"
echo 'font size: 1.2em;' >> "${WO_PATH}dash.html"
echo 'font weight: 700;' >> "${WO_PATH}dash.html"
echo 'margin-bottom: 20px;' >> "${WO_PATH}dash.html"
echo 'margin-left: 130px;' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '.percentage {' >> "${WO_PATH}dash.html"
echo 'font size: 8em;' >> "${WO_PATH}dash.html"
echo 'line-height: 1;' >> "${WO_PATH}dash.html"
echo 'text-transform: uppercase;' >> "${WO_PATH}dash.html"
echo 'width: 100%;' >> "${WO_PATH}dash.html"
echo 'height: 40px;' >> "${WO_PATH}dash.html"
echo 'margin-left: 130px;' >> "${WO_PATH}dash.html"
echo 'background: repeating-linear-gradient(' >> "${WO_PATH}dash.html"
echo 'to right,' >> "${WO_PATH}dash.html"
echo '#ddd,' >> "${WO_PATH}dash.html"
echo '#ddd 1px,' >> "${WO_PATH}dash.html"
echo '#fff 1px,' >> "${WO_PATH}dash.html"
echo '#fff 5%' >> "${WO_PATH}dash.html"
echo ');' >> "${WO_PATH}dash.html"
echo '&:after {' >> "${WO_PATH}dash.html"
echo 'content: "";' >> "${WO_PATH}dash.html"
echo 'display: block;' >> "${WO_PATH}dash.html"
echo 'background-color:#3d9970;' >> "${WO_PATH}dash.html"
echo 'width: 50%;' >> "${WO_PATH}dash.html"
echo 'margin-bottom: 10px;' >> "${WO_PATH}dash.html"
echo 'height: 90%;' >> "${WO_PATH}dash.html"
echo 'position: relative;' >> "${WO_PATH}dash.html"
echo 'top: 50%;' >> "${WO_PATH}dash.html"
echo 'transform: translateY(-50%);' >> "${WO_PATH}dash.html"
echo 'transition: background-color .3s ease' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '&:hover,' >> "${WO_PATH}dash.html"
echo '&:focus {' >> "${WO_PATH}dash.html"
echo '&:after {' >> "${WO_PATH}dash.html"
echo 'background-color: #aaa;' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"

echo '}' >> "${WO_PATH}dash.html"


echo '@for $i from 1 through 100 {' >> "${WO_PATH}dash.html"
echo '.percentage-#{$i} {' >> "${WO_PATH}dash.html"
echo '&:after {' >> "${WO_PATH}dash.html"
echo '$value: ($i * 1%);' >> "${WO_PATH}dash.html"
echo 'width: $value;' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '}' >> "${WO_PATH}dash.html"
echo '</style>' >> "${WO_PATH}dash.html"

echo '</head>' >> "${WO_PATH}dash.html"
echo '<body>' >> "${WO_PATH}dash.html"
        echo '<h1>Workout Dashboard</h1>' >> "${WO_PATH}dash.html"
    echo '<div class="container">' >> "${WO_PATH}dash.html"
        echo '<div class="card">' >> "${WO_PATH}dash.html"
	sql="SELECT FOCUS FROM lifts WHERE FOCUS IS NOT NULL AND FOCUS <> '' ORDER BY ROWID DESC LIMIT 1;"
FOCUS2=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
	sql="SELECT DIET FROM lifts WHERE DIET IS NOT NULL AND DIET <> '' ORDER BY ROWID DESC LIMIT 1;"
DIET2=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
	sql="SELECT MYWEIGHT FROM lifts WHERE MYWEIGHT IS NOT NULL AND MYWEIGHT <> '' ORDER BY ROWID DESC LIMIT 1;"
MYWEIGHT2=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
		echo "<h2>Recent Focus</h2>" >> "${WO_PATH}dash.html"
		echo "<h1 style=\"color: purple;\">$FOCUS2 </h1>" >> "${WO_PATH}dash.html"
		echo "</br>" >> "${WO_PATH}dash.html"
		echo "<h1 style=\"color: orange;\">$DIET2 </h1>" >> "${WO_PATH}dash.html"
		echo "</br>" >> "${WO_PATH}dash.html"
		echo "<h1 style=\"color: red;\">$MYWEIGHT2 kg</h1>" >> "${WO_PATH}dash.html"
		sql="SELECT date, myweight FROM ( SELECT date, myweight FROM lifts GROUP BY date ) AS unique_dates ORDER BY date DESC LIMIT 1 OFFSET 19;"
MYW20AGODATE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")


# Split the data at the pipe delimiter
split_data=(${MYW20AGODATE//|/ })

# Access the split parts using array indexing
MYD20AGO=${split_data[0]}
MYW20AGO=${split_data[1]}
WEIGHTCHANGE=$(echo "scale=1; $MYWEIGHT2 - $MYW20AGO" | bc)

		echo "<p style=\"color: red;\">Change Since $MYD20AGO : $WEIGHTCHANGE kg</p>" >> "${WO_PATH}dash.html"

echo '</div>' >> "${WO_PATH}dash.html"
        echo '<div class="card-heavy">' >> "${WO_PATH}dash.html"
            echo '<h2>PRs</h2>' >> "${WO_PATH}dash.html"
            echo '<ul>' >> "${WO_PATH}dash.html"
sql="SELECT MAX(weight) AS heaviest_bench_press FROM lifts WHERE exercise = 'Bench';"
BPRESS=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")


sql="SELECT MAX(weight) AS heaviest_leg_press FROM lifts WHERE exercise = 'Leg Press';"
LPRESS=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")


sql="SELECT MAX(weight) AS heaviest_db_press FROM lifts WHERE exercise = 'DB Press';"
DBPRESS=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

sql="SELECT MAX(weight) AS heaviest_pulldown FROM lifts WHERE exercise = 'Pulldown';"
PULLDOWN=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

                echo "<p>Leg Press: <h3>$LPRESS kg</h3></p>" >> "${WO_PATH}dash.html"
                echo "<p>Bench: <h3>$BPRESS kg</h3></p>" >> "${WO_PATH}dash.html"
                echo "<p>DB Press: <h3>$DBPRESS kg</h3></p>" >> "${WO_PATH}dash.html"
                echo "<p>Pulldown: <h3>$PULLDOWN kg</h3></p>" >> "${WO_PATH}dash.html"
        echo '</div>' >> "${WO_PATH}dash.html"
        echo '<div class="card">' >> "${WO_PATH}dash.html"

sql="SELECT date FROM lifts ORDER BY date DESC LIMIT 1;"
LASTONEDATE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
sql="SELECT DISTINCT muscle FROM lifts WHERE date = '$LASTONEDATE';"
LASTONEMUSCLES=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

sql="SELECT exercise || ' - ' || weight || 'x' || reps || '</br>' FROM lifts WHERE date IN ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 2 ) AND date = ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 1 );"

LASTONE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

            echo "<h2>$LASTONEMUSCLES $LASTONEDATE</h2>" >> "${WO_PATH}dash.html"
                echo "$LASTONE" >> "${WO_PATH}dash.html"
        echo '</div>' >> "${WO_PATH}dash.html"
        echo '<div class="card">' >> "${WO_PATH}dash.html"

sql="SELECT date FROM ( SELECT DISTINCT date FROM lifts ) AS subquery ORDER BY date DESC LIMIT 1 OFFSET 1;"
LASTWODATE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
sql="SELECT DISTINCT muscle FROM lifts WHERE date = '$LASTWODATE';"
LASTWOMUSCLES=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

sql="SELECT exercise || ' - ' || weight || 'x' || reps || '</br>' FROM lifts WHERE date IN ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 2 ) AND date = ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 1 OFFSET 1 );"

LASTWO=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

            echo "<h2>$LASTWOMUSCLES $LASTWODATE </h2>" >> "${WO_PATH}dash.html"
                echo "$LASTWO" >> "${WO_PATH}dash.html"
        echo '</div>' >> "${WO_PATH}dash.html"
        echo '<div class="card">' >> "${WO_PATH}dash.html"

sql="SELECT date FROM ( SELECT DISTINCT date FROM lifts ) AS subquery ORDER BY date DESC LIMIT 1 OFFSET 2;"
LASTHREEDATE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
sql="SELECT DISTINCT muscle FROM lifts WHERE date = '$LASTHREEDATE';"
LASTHREEMUSCLES=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

sql="SELECT exercise || ' - ' || weight || 'x' || reps || '</br>' FROM lifts WHERE date IN ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 3 ) AND date = ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 1 OFFSET 2 );"

LASTHREE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

            echo "<h2>$LASTHREEMUSCLES $LASTHREEDATE </h2>" >> "${WO_PATH}dash.html"
                echo "$LASTHREE" >> "${WO_PATH}dash.html"
        echo '</div>' >> "${WO_PATH}dash.html"
        echo '<div class="card">' >> "${WO_PATH}dash.html"

sql="SELECT date FROM ( SELECT DISTINCT date FROM lifts ) AS subquery ORDER BY date DESC LIMIT 1 OFFSET 3;"
LASTFOURDATE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
sql="SELECT DISTINCT muscle FROM lifts WHERE date = '$LASTFOURDATE';"
LASTFOURMUSCLES=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

sql="SELECT exercise || ' - ' || weight || 'x' || reps || '</br>' FROM lifts WHERE date IN ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 4 ) AND date = ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 1 OFFSET 3 );"

LASTFOUR=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

            echo "<h2>$LASTFOURMUSCLES $LASTFOURDATE </h2>" >> "${WO_PATH}dash.html"
                echo "$LASTFOUR" >> "${WO_PATH}dash.html"
        echo '</div>' >> "${WO_PATH}dash.html"
        echo '<div class="card">' >> "${WO_PATH}dash.html"
            echo '<h2>Gym Attendance (Last 60 Days)</h2>' >> "${WO_PATH}dash.html"
sql="SELECT COUNT(DISTINCT date) AS workouts_last_60_days FROM lifts WHERE date >= date('now', '-60 days');"
ATTENDANCE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
sql="SELECT COUNT(DISTINCT date) AS gym_visits_2024 FROM lifts WHERE DATE(date) >= '2024-01-01' AND DATE(date) <= DATE('now');"
ATT24=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

                echo  "<h1 style=\"color: blue;\">$ATTENDANCE</h1>" >> "${WO_PATH}dash.html"
            echo '<h2>Gym Attendance This Year</h2>' >> "${WO_PATH}dash.html"
                echo  "<h1 style=\"color: hotpink;\">$ATT24</h1>" >> "${WO_PATH}dash.html"
        echo '</div>' >> "${WO_PATH}dash.html"
        echo '<div class="card">' >> "${WO_PATH}dash.html"
            echo '<h2>PROGRESS</h2>' >> "${WO_PATH}dash.html"
		    echo '<dl>' >> "${WO_PATH}dash.html"
				echo '<dd class="perccentage percentage-7"><span class="text"> Data 1:20% </span></dd>' >> "${WO_PATH}dash.html"
				echo '<dd class="perccentage percentage-7"><span class="text"> Data 1:20% </span></dd>' >> "${WO_PATH}dash.html"
				echo '<dd class="perccentage percentage-7"><span class="text"> Data 1:20% </span></dd>' >> "${WO_PATH}dash.html"
		    echo '</dl>' >> "${WO_PATH}dash.html"
        echo '</div>' >> "${WO_PATH}dash.html"
    echo '</div>' >> "${WO_PATH}dash.html"
echo '</body>' >> "${WO_PATH}dash.html"
echo '</html>' >> "${WO_PATH}dash.html"

