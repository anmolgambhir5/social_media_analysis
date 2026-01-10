-- what is the most used platform?
select Most_Used_Platform, sum(Avg_Daily_Usage_Hours) as Number_Of_Hours
from students_social_media_addiction
group by Most_Used_Platform;
-- how many people have sleep hours less than 6 and addiction scores greater than equal to 6?
select count(Student_ID) as no_of_students
from students_social_media_addiction
 where Sleep_Hours_Per_Night < 6 AND Addicted_Score >= 6
-- how many people have mental health score less than equal to 5 and addiction scores greater than equal to 6?
select count(Student_ID) as no_of_students
from students_social_media_addiction
where Mental_Health_Score <= 5 AND Addicted_Score >= 6;
-- Find the number of people who have social media spending hours less than or equal to 3 and have academic performance affected as 'yes'?
select count(Student_ID) as no_of_students
 from students_social_media_addiction
 where Avg_Daily_Usage_Hours <= 3 and Affects_Academic_Performance = 'Yes';
-- How many people have Avg Daily Usage Hours greater than equal to 3 and Sleep hours less than equal to 8?
select count(Student_ID) as no_of_people
from students_social_media_addiction
where Avg_Daily_Usage_Hours <= 3 and Sleep_Hours_Per_Night <= 8;
-- What is the gender wise average addicted score?
select Gender, avg(Addicted_Score) as avg_addicted_score
from students_social_media_addiction
group by Gender;
