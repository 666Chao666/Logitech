#

categoryConstruction <- function(df) {
  # function to concatenate product categories into a single unique identifier
  #
  # Arguments:
  #   df: data frame contains category info for each product
  #
  # Returns:
  #   list of unique product category identifiers
  #
  
  #
  cats <- vector(length = dim(df)[1])
  
  for (i in 1:dim(df)[1]) {
    temp_row <- df[i, ]
    temp_char <- paste(temp_row$Category1, temp_row$Category2, 
                       temp_row$Category3, sep = '')
    cats[i] <- temp_char
    
  }
  
  cats <- make.names(cats, T)
  
  return(cats)
}
