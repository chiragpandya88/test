# convert to local data frame
flights <- tbl_df(hflights)


filter(flights, Month == 1, DayofMonth == 1)

filter(flights,UniqueCarrier %in% c("AA","UA"))

select(flights, DepTime, ArrTime, FlightNum)

flights %>% select(UniqueCarrier,DepDelay) %>% filter(DepDelay > 60)

flights %>%  select(UniqueCarrier, DepDelay) %>%  arrange(DepDelay)