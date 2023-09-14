library(readr)
library(dplyr)

dem_women <- read_csv("https://raw.githubusercontent.com/eteitelbaum/dataviz-summer-2023/main/modules/data/dem_women.csv")

dem_summary <- dem_women |> 
  group_by(country)  |> 
  summarize(
    polyarchy = median(polyarchy, na.rm = TRUE),
    gdp_pc = mean(gdp_pc, na.rm = TRUE), 
    flfp = sd(flfp, na.rm = TRUE), 
    women_rep = median(women_rep, na.rm = TRUE)
  ) |> 
  arrange(desc(gdp_pc)) 

dem_summary
