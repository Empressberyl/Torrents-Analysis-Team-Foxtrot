# Torrents-Analysis-Team-Foxtrot
PDF REPORT ON THE TORRENTS ANALYSIS FOR TEAM FOXTROT

GROUP NAME: Team Foxtrot
PROJECT TITLE: Torrent Analysis
Team Foxtrot was provided with an SQLite DB file to analyze and extract some
information therein. The SQLite DB contained a dataset on a What.CD API which had
information on the entire torrents tagged hip hop with about 75,719 releases as at 22nd
October, 2016.
Team Foxtrot were given the task of answering the following questions:
1. What is the most popular release type?
2. For the last three years, what release type had the most torrents?
3. Who are the top five most common artists?
4. Average number of downloads.
We downloaded the DB bowser for SQLite to enable us view the database file. Following
this we ran queries to answer the questions posed above. Below are the answers to the
questions with the different queries we ran to arrive at that conclusion.
1. The most popular release type among the 15 different release types is Unknown.
This result was gotten when we ran the query: SELECT MAX(releaseType) FROM
torrents;
2. The release type that had the most torrents was Album with 8,852 torrents.
Running the query below provided us the required infoemation for question 2.
SELECT groupYear, releaseType,
COUNT(*)
FROM torrents
WHERE groupYear BETWEEN 2013 and 2016
GROUP BY groupYear
ORDER BY COUNT(*)
DESC
LIMIT 1;
3. The top five most common artists as deduced from running the query:
SELECT artist, COUNT(artist) AS COUNT
FROM torrents
GROUP BY artist
ORDER BY count

DESC
LIMIT 5; are
1) Various artists [6,381]
2) DJ Screw [353]
3) Eminem [132]
4) 2 Pac [127]
5) Lil’ Wayne [120]
4. The average number of downloads was approximately 207. This endpoint was
achieved when the query below was run.
SELECT AVG(totalSnatched) FROM torrents;

##Submission format
Names| Roles | Responsibilities
-----|-------|-----------------
[TAOFEEQAH  IFELADE BAKARE/ ABIGAIL O. AJAYI] | Who are the top five most common artistes |
[IBE, IFEOMA MAUREEN | Team member] | Sign up on Kaggle/Download SQLite DB file/Sign up on clickup/Download DB browser for SQLite/Run the query to answer question 4/Commit the SQL file to our GitHub repository/Complete task on clickup/ Collaborate with team members on the best way to present our demo.
[ONAH ANTHONIA OBIAGELI] | What is the most popular release type|
[JOY NKIRU UZOHO] | For the last three years, what release type has the most torrents | Download the dataset from kaggle/Sign up on clickup/Download DB browser for SQLite/Run the query to answer question 2/Commit the SQL file to our GitHub repository/Complete task on clickup/Collaborate with team members on slide presentations for the demo.
[ABIGAIL OLUWAFUNMILAYO AJAYI] | Who are the top five most common artistes?/Create Link to a Github workspace/ Create a click up workspace and update the folder | Sign up on clickup/Created Space for the team and invited them/Assign task to team members/Created  github repository for the team/Created a READMEfile on github/Created a google folder for the project documentation./I and the team members had a review on the documentation on Monday and Wednesday night/Sign up on Kaggle and/download the SQLite DB file/Worked on DB browser for SQLite/Run the query to answer question 3 with TAOFEEQAH IFELADE BAKARE/Commit the SQL file to our GitHub repository/Complete task on clickup/Run the query to answer the question./

