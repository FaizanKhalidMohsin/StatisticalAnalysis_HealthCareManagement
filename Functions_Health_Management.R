

############## Functions 


###### First Load in all the R Packages 

require(dplyr)
require(ggplot2)
require(knitr)

##### Graph_trendlines Function:
##### Define Function that takes in name of dataset, Title of the Graph & Y-axis name
##### and plots tred lines. Data must come from the OECD website in long form.

graph_trendlines = function(data, Title, yaxis_title){
  
      # Input( data= OECD long form dataset, Title = A String, yaxis_title = A String )
  
      ggplot(data, aes(x = Year, y = Value, color = Country)) + # Make sure data has Year, Value & Country defined.
      geom_line() +  # 
      ggtitle(Title) + 
      labs(y = yaxis_title) 
  
}

## Test 

# First import and clean the dataset:

# Life_expectancy_data <- read.csv("Life_Expectany_trend_data.csv", header = TRUE)
# LE = select(Life_expectancy_data, Country, Year, Value)
# LE_data = filter(LE, Year >= 1970)

# Now graph using graph_trendlines:

# graph_trendlines(LE_data, "Life Expectancy at Birth Graph", "Age (years)")
#   Should look like this:
#         ggplot(LE_data, aes(x = Year, y = Value, color = Country)) + geom_line() + ggtitle("Life Expecatancy at Birth Graph") + labs(y = "Age (years)")
#   For Dots version of this Graph replace geom_line() with geom_point()

