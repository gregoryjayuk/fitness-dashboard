#!/bin/bash

DB_FILE="workouts.db"
WO_PATH="/home/greg/ZBank/Workouts/Dashboard/"
echo '<!DOCTYPE html>' > /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '<html lang="en">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '<head>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
    echo '<meta charset="UTF-8">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
    echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
    echo '<title>Workout Dashboard</title>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
	echo '<style>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'body {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'font-family: sans-serif;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'background-color: #2f3742; /* Dark background */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'color: #dfe0e4; /* Light text color */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'margin: 20px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '.container {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'display: flex;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'flex-wrap: wrap;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'justify-content: space-between;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'width: 90%;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'margin: 0 auto;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '.card {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'background-color: #202734; /* Darker card background */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'transition: background-color 0.2s ease-in-out;  /* Add hover effect transition */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'border-radius: 5px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'padding: 15px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'margin: 10px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'width: 45%;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'text-align: center;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Subtle shadow */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'color: #dfe0e4; /* Text color for cards */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '.card:hover {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'background-color: black;  /* Change background color on hover */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '.card-heavy {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'background-color: #202734; /* Darker card background */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'transition: background-color 0.2s ease-in-out;  /* Add hover effect transition */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'border-radius: 5px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'padding: 15px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'margin: 10px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'width: 45%;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'text-align: center;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Subtle shadow */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '.card-heavy:hover {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'background-color: black;  /* Change background color on hover */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'div.card-heavy h3 {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'font-size: 2em;  /* Adjust font size as desired (e.g., 3em for large) */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'font-weight: bold;  /* Make the text bold */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'color: #00FF00;  /* Neon green color */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'h1, h2 {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'margin-bottom: 10px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'color: #fff; /* White headings */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'ul {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'list-style: none;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'padding: 0;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'color: #dfe0e4; /* Text color for lists */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'li {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'margin-bottom: 5px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '.bar-graph {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'width: 100%;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'height: 200px; /* Adjust height as needed */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'display: flex;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'flex-direction: row;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'flex-wrap: wrap; /* Wrap bars to multiple rows if needed */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'gap: 5px; /* Gap between bars and numbers */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'font-size: 3em;  /* Adjust font size as desired (e.g., 3em for large) */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'font-weight: bold;  /* Make the text bold */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'color: #00FF00;  /* Neon green color */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'text-align: center;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'div.bar-graph h2 {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'color: #0000FF;  /* Neon green color */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'text-align: center;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '.day {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'display: flex;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'flex-direction: column;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'align-items: center;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'text-align: center;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'color: #dfe0e4; /* Text color for days */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '.day > span.attendance-mark {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'width: 10px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'height: 10px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'background-color: #00FF00; /* Green attendance mark (neon) */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'margin-top: 5px; /* Adjust margin as needed */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo 'border-radius: 50%; /* Circular mark */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '@media only screen and (max-width: 1100px) {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo '.card {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
    echo 'width: 100%;  /* Make cards full width on mobile */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo '.card-heavy {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
    echo 'width: 100%;  /* Make cards full width on mobile */' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
  echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'dl {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'display: flex;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'background-color: white;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'flex-direction: column;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'width: 100%;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'max-width: 700px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'position: relative;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'padding 20px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'dt {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'align-self: flex-start;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'width: 100%;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'font-weight: 700;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'display: block;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'text-align: center;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'font size: 1.2em;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'font weight: 700;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'margin-bottom: 20px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'margin-left: 130px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '.percentage {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'font size: 8em;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'line-height: 1;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'text-transform: uppercase;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'width: 100%;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'height: 40px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'margin-left: 130px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'background: repeating-linear-gradient(' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'to right,' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '#ddd,' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '#ddd 1px,' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '#fff 1px,' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '#fff 5%' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo ');' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '&:after {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'content: "";' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'display: block;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'background-color:#3d9970;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'width: 50%;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'margin-bottom: 10px;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'height: 90%;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'position: relative;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'top: 50%;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'transform: translateY(-50%);' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'transition: background-color .3s ease' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '&:hover,' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '&:focus {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '&:after {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'background-color: #aaa;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html

echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html


echo '@for $i from 1 through 100 {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '.percentage-#{$i} {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '&:after {' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '$value: ($i * 1%);' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo 'width: $value;' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '}' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '</style>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html

echo '</head>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '<body>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '<h1>Workout Dashboard</h1>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
    echo '<div class="container">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '<div class="card">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
	sql="SELECT FOCUS FROM lifts WHERE FOCUS IS NOT NULL AND FOCUS <> '' ORDER BY ROWID DESC LIMIT 1;"
FOCUS2=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
	sql="SELECT DIET FROM lifts WHERE DIET IS NOT NULL AND DIET <> '' ORDER BY ROWID DESC LIMIT 1;"
DIET2=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
	sql="SELECT MYWEIGHT FROM lifts WHERE MYWEIGHT IS NOT NULL AND MYWEIGHT <> '' ORDER BY ROWID DESC LIMIT 1;"
MYWEIGHT2=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
		echo "<h2>Recent Focus</h2>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
		echo "<h1 style=\"color: purple;\">$FOCUS2 </h1>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
		echo "</br>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
		echo "<h1 style=\"color: orange;\">$DIET2 </h1>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
		echo "</br>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
		echo "<h1 style=\"color: red;\">$MYWEIGHT2 kg</h1>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
		sql="SELECT date, myweight FROM ( SELECT date, myweight FROM lifts GROUP BY date ) AS unique_dates ORDER BY date DESC LIMIT 1 OFFSET 19;"
MYW20AGODATE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")


# Split the data at the pipe delimiter
split_data=(${MYW20AGODATE//|/ })

# Access the split parts using array indexing
MYD20AGO=${split_data[0]}
MYW20AGO=${split_data[1]}
WEIGHTCHANGE=$(echo "scale=1; $MYWEIGHT2 - $MYW20AGO" | bc)

		echo "<p style=\"color: red;\">Change Since $MYD20AGO : $WEIGHTCHANGE kg</p>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html

echo '</div>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '<div class="card-heavy">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
            echo '<h2>PRs</h2>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
            echo '<ul>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
sql="SELECT MAX(weight) AS heaviest_bench_press FROM lifts WHERE exercise = 'Bench';"
BPRESS=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")


sql="SELECT MAX(weight) AS heaviest_leg_press FROM lifts WHERE exercise = 'Leg Press';"
LPRESS=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")


sql="SELECT MAX(weight) AS heaviest_db_press FROM lifts WHERE exercise = 'DB Press';"
DBPRESS=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

sql="SELECT MAX(weight) AS heaviest_pulldown FROM lifts WHERE exercise = 'Pulldown';"
PULLDOWN=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

                echo "<p>Leg Press: <h3>$LPRESS kg</h3></p>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
                echo "<p>Bench: <h3>$BPRESS kg</h3></p>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
                echo "<p>DB Press: <h3>$DBPRESS kg</h3></p>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
                echo "<p>Pulldown: <h3>$PULLDOWN kg</h3></p>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '</div>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '<div class="card">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html

sql="SELECT date FROM lifts ORDER BY date DESC LIMIT 1;"
LASTONEDATE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
sql="SELECT DISTINCT muscle FROM lifts WHERE date = '$LASTONEDATE';"
LASTONEMUSCLES=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

sql="SELECT exercise || ' - ' || weight || 'x' || reps || '</br>' FROM lifts WHERE date IN ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 2 ) AND date = ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 1 );"

LASTONE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

            echo "<h2>$LASTONEMUSCLES $LASTONEDATE</h2>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
                echo "$LASTONE" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '</div>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '<div class="card">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html

sql="SELECT date FROM ( SELECT DISTINCT date FROM lifts ) AS subquery ORDER BY date DESC LIMIT 1 OFFSET 1;"
LASTWODATE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
sql="SELECT DISTINCT muscle FROM lifts WHERE date = '$LASTWODATE';"
LASTWOMUSCLES=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

sql="SELECT exercise || ' - ' || weight || 'x' || reps || '</br>' FROM lifts WHERE date IN ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 2 ) AND date = ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 1 OFFSET 1 );"

LASTWO=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

            echo "<h2>$LASTWOMUSCLES $LASTWODATE </h2>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
                echo "$LASTWO" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '</div>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '<div class="card">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html

sql="SELECT date FROM ( SELECT DISTINCT date FROM lifts ) AS subquery ORDER BY date DESC LIMIT 1 OFFSET 2;"
LASTHREEDATE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
sql="SELECT DISTINCT muscle FROM lifts WHERE date = '$LASTHREEDATE';"
LASTHREEMUSCLES=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

sql="SELECT exercise || ' - ' || weight || 'x' || reps || '</br>' FROM lifts WHERE date IN ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 3 ) AND date = ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 1 OFFSET 2 );"

LASTHREE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

            echo "<h2>$LASTHREEMUSCLES $LASTHREEDATE </h2>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
                echo "$LASTHREE" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '</div>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '<div class="card">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html

sql="SELECT date FROM ( SELECT DISTINCT date FROM lifts ) AS subquery ORDER BY date DESC LIMIT 1 OFFSET 3;"
LASTFOURDATE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
sql="SELECT DISTINCT muscle FROM lifts WHERE date = '$LASTFOURDATE';"
LASTFOURMUSCLES=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

sql="SELECT exercise || ' - ' || weight || 'x' || reps || '</br>' FROM lifts WHERE date IN ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 4 ) AND date = ( SELECT DISTINCT date FROM lifts ORDER BY date DESC LIMIT 1 OFFSET 3 );"

LASTFOUR=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

            echo "<h2>$LASTFOURMUSCLES $LASTFOURDATE </h2>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
                echo "$LASTFOUR" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '</div>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '<div class="card">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
            echo '<h2>Gym Attendance (Last 60 Days)</h2>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
sql="SELECT COUNT(DISTINCT date) AS workouts_last_60_days FROM lifts WHERE date >= date('now', '-60 days');"
ATTENDANCE=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")
sql="SELECT COUNT(DISTINCT date) AS gym_visits_2024 FROM lifts WHERE DATE(date) >= '2024-01-01' AND DATE(date) <= DATE('now');"
ATT24=$(sqlite3 "$WO_PATH$DB_FILE" "$sql")

                echo  "<h1 style=\"color: blue;\">$ATTENDANCE</h1>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
            echo '<h2>Gym Attendance This Year</h2>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
                echo  "<h1 style=\"color: hotpink;\">$ATT24</h1>" >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '</div>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '<div class="card">' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
            echo '<h2>PROGRESS</h2>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
		    echo '<dl>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
				echo '<dd class="perccentage percentage-7"><span class="text"> Data 1:20% </span></dd>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
				echo '<dd class="perccentage percentage-7"><span class="text"> Data 1:20% </span></dd>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
				echo '<dd class="perccentage percentage-7"><span class="text"> Data 1:20% </span></dd>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
		    echo '</dl>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
        echo '</div>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
    echo '</div>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '</body>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html
echo '</html>' >> /home/greg/ZBank/Workouts/Dashboard/dash.html

