# DA-Google-Case-Study
Cyclistic bike-share analysis case study using Excel -> POWER BI. (Includes a presentation of the different way I analyzed the data)


Biking Google Capstone Project Planning / Brainstorming:

I will plan to use Power Query Excel -> R for the charts


Cleaning Data:--------------------------------------------

Ride id - Probably not going to be useful in terms of studying the data
Types: Unique


Rideable type - Useful for studying trends such as: the commonly used bikes in the last 12 months, how has it changed...

~~~~~~~~~~~
Started at - 
Ended at -

Convert data type to date time

To make it clearer, I will make a new column for the gap in between the date times, I will consider making new columns to read the month, days, hours easier to see

~~~~~~~~~~~

Start station name - Could be considered useful since I can know where in the city of Chicago do people mostly start using the bikes
End station name - Could be considered useful as well.
Consider deleting station id start and end. 
I ended up deleting all of this due to how theres not really much we can do about converting casual to annual members based on location.
- . Even if certain stations are popular, this does not necessarily indicate that riders at those stations are more likely to convert. this is why instead, behavioral patterns like ride frequency, ride duration, and preferred time of day are more relevant.
- "Time-based insights (such as ride frequency, duration, and peak usage hours) are more universally relatable and actionable compared to specific station locations. Time-based trends provide broader insights that apply to all riders, regardless of where they start or end their trips."

We could also extract the day of the week / months of the year to show the frequency of bikers later on


Longitude and latitude start and end times: Do they charge by a certain amount of distance or time? Not given information on this so take care later


Member Type: One of the most important columns so take a look at this most
Types: Member, casual


Summary: 
-I wanted to put a big emphasis in minutes so ride duration will focus on minutes. According to google, in the US, average bike time is around 20 minutes so we will consider this as average.
	- So instead of showing the specific duration of minutes, we used this to create a conditional column which summarizes into "Under 20", 		"20 to 30", "30 to 60", "Over 60"
- We deleted a bunch of columns because we used them to make other columns that can emphasize trends in the data. We are focused more on when people start using them compared to when they end because we will now take a look at the duration of use instead.

-I also will consider doing a GROUP BY for every single column to reduce the amount of rows. This removes all the copies if every single column value of a row is the same as another and adds it to another column called 'count' instead. We can see the frequencies much easier this way


TOOK ME 2 HOURS TO FIGURE OUT THAT TWO OF THE COLUMNS IN THE 202406, 202407 202408, 202412 CSV FILE HAD THE WRONG DATE TIME FORMAT. mm:ss.0 instead of yyyy-mm-dd h:mm. I had to restart another Power Query and ended up detecting data type based on all the datasets instead of first 200 rows so I could change all the data types.
-----------------------------------------------------------

Current Questions: 
- Why aren't there more membership options other than casual and member? eg) 1 month pass, 6 month pass, etc. This would allow for people to buy a membership more convenient to their needs. It seems that it is hard to convert casual into annual members if they dont need it.


Analyzing The Data:
- In general, almost no one uses the electric scooters so we filter this out.

- I see that it is what we would expect in terms of frequency during the season. Around during the warmer seasons, there are more bikers.

- I also notice that there seems to be a mode / max count around end of August / September which also makes sense since that's when school starts during the year. From Google: "The first day of school for Chicago Public Schools (CPS) in the 2024–2025 school year is Monday, August 26, 2024"

- When looking at the Day vs Count sheet, it looks like there are more casual members during the weekends compared to the weekdays. This makes sense since the weekends is when families have most of their free time.

- Assuming that the average person either works a 9-5, or is at school for around the same time, it looks like more people are using the service at the end of their work / when they go home as the max can be seen around 5 pm. (Consider looking at the times when filtered with specific days or months).

- Regardless of membership, type of bike, it looks like majority of people use the bikes for under 10 minutes


Answering the business task: 
	- Of course we want to advertise to the people in which biking is more relevant. One idea could be to advertise during the nicer seasons since this is when people bike more. Also, more specifically we could do it during April or May since this is when the number of members and casuals start picking up until September.

	- Suprisingly, a lot of the casual bikers are actually biking over an hour. There is whopping 125728 number of Casual Bikers Total (Over 60 min) in all of 2024 compared to 25543 Member Bikers Total(Over 60 min). This suggests that casual riders already have a strong interest in biking, but they haven’t converted to memberships yet. This could signify a problem with service pricing, Casual riders could be tourists or occasional users. What we could do to capitalize on this:
		- Highlight cost benefits: Show casual riders how much they could save with a 		membership vs. paying for long rides.
		- Offer incentives for first-time members: Discounts or free trials could 		encourage casual users to sign up.
		-Targeted marketing & promotions: Use ride data to offer special promotions to 		casual riders who frequently take long rides.

- Seasons are a BIG FACTOR onto why it is almost impossible to justify people getting memberships. Starting at October (getting colder), the numbers start to drop in both casual and member bikers.


	





Visualizing The Data using Power BI (Tableau?):

- Considered putting both Rides per month and per day in Dashboard but removed Rides per Day visual due to the fact that proportionally, there were the same amount of riders throughout the whole week.


