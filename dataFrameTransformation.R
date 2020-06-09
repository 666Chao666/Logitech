#
library(lubridate)


dataFrameTransformation <- function(df, categories) {
  # function to transform data frame
  #
  # Arguments:
  #   df: data frame contains category info for each product
  #   categories: unique product category identifier
  #
  # Returns:
  #   transformed data frame with time, each row represents a timestamp and 
  #   each column represents a product
  #
  
  #
  dates <- parse_date_time(colnames(df), orders = 'my')
  
  df <- as.data.frame(t(df))
  
  row.names(df) <- c(1:dim(df)[1])
  colnames(df) <- categories
  
  df$TIME <- dates
  
  return(df)
}
