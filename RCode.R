# Appsilon App RCode
# Oct 2020
# MAde by Henrique Oliveira

# Load packages
library(geosphere)
library(tidyverse)
library(lubridate)

# Read dataset
df <- read_csv('ships.csv')

# Transform datatime as date
df$DATETIME <- ymd_hms(df$DATETIME)

# Select dataset important variables
df <- df %>% 
      select(LAT, LON, ship_type, SHIPNAME, DATETIME)

# Create ship name and type variable
df$ship_type_and_name <- paste(df$ship_type, df$SHIPNAME)

# Filter observations with time interval bigger than 30 sec
df <- df %>% 
      arrange(ship_type_and_name,  desc(DATETIME)) %>%
      group_by(ship_type_and_name) %>%
      mutate(DIFFERENCE = abs(DATETIME - lag(DATETIME))) %>%
      filter(is.na(DIFFERENCE) | DIFFERENCE >= 30) %>%
      ungroup()

# Create index column
df$ID <- 1:nrow(df)

# Get the max distance between two observations
dfMax <- df %>%
         group_by(ship_type_and_name) %>%
         mutate(DISTANCE = distHaversine(cbind(LON, LAT), cbind(lag(LON), lag(LAT)))) %>%
         filter(DISTANCE > 0) %>%
         top_n(1, DISTANCE) %>%
         ungroup()

# Separate duplicates
duplicates <- dfMax[duplicated(dfMax$ship_type_and_name) == TRUE | 
                    duplicated(dfMax$ship_type_and_name, fromLast = TRUE) == TRUE, ]

# Filter most recent duplicates
duplicates <- duplicates %>%
              group_by(ship_type_and_name) %>%
              top_n(1, DATETIME) %>%
              ungroup()

# Remove duplicates
dfMax <- dfMax[!(duplicated(dfMax$ship_type_and_name) == TRUE |
                 duplicated(dfMax$ship_type_and_name, fromLast = TRUE)), ]

# Unite clean duplicates
dfMax <- rbind(dfMax, duplicates)

# Get index 
ind <- match(dfMax$ID, df$ID)
ind <- c(ind, ind - 1)

# Get max distance two points observations
df <- df[ind,]  %>% 
      arrange(ship_type_and_name, desc(DATETIME)) %>%
      group_by(ship_type_and_name) %>%
      mutate(DISTANCE = distHaversine(cbind(LON, LAT), cbind(lag(LON), lag(LAT)))) %>%
      mutate(TIME = abs(DATETIME - lag(DATETIME))) %>%
      ungroup()

# Write csv
write.csv(df, 'ShipsAppData.csv', row.names = FALSE)