all_content <- pdf_text("/Users/Annie/Desktop/STA304_paper_4/inputs/literature/FR103.pdf")
just_page_i <- stri_split_lines(all_content[[37]])[[1]]  # see pg 37
just_page_i
just_page_i <- just_page_i[just_page_i != ""] # delete empty line
just_page_i

# Grab the type of table
type_of_table <- just_page_i[1] %>% str_squish()
type_of_table

# Get rid of the top matter
# Manually for now, but could create some rules if needed
just_page_i_no_header <- just_page_i[10:length(just_page_i)]
just_page_i_no_header
# Get rid of the bottom matter
# Manually for now, but could create some rules if needed
just_page_i_no_header_no_footer <- just_page_i_no_header[c(1:13,34)] 
just_page_i_no_header_no_footer

# Convert into a tibble
my_data_male <- tibble(all = just_page_i_no_header_no_footer)
my_data_male

# Split columns
my_data_male %>%
  mutate(all = str_squish(all)) # Any space more than two spaces is reduced

my_data_male <-
  my_data_male %>%
  mutate(all = str_squish(all)) %>% 
  mutate(all = str_replace(all, "24r956", "24,956")) %>% 
  mutate(all = str_replace(all, "1,3", "1.3")) %>% 
  mutate(all = str_replace(all, "23,4", "23.4")) %>% 
  mutate(all = str_replace(all, "38,7", "38.7")) %>% 
  mutate(all = str_replace(all, "36,5", "36.5")) %>% 
  mutate(all = str_replace(all, "0,1", "0.1")) %>% 
  mutate(all = str_replace(all, "9,5", "9.5")) %>% 
  mutate(all = str_replace(all, "I00.0", "100.0")) %>% 
  mutate(all = str_replace(all, "10O.0", "100.0")) %>% 
  mutate(all = str_replace(all, "I00.0", "100.0")) %>% 
  mutate(all = str_replace(all, "1.444", "1,444")) %>% 
  mutate(all = str_replace(all, "83.0", "83")) %>% 
  mutate(all = str_replace(all, "100.0", "100")) %>% 
  mutate(all = str_remove(all, ",")) %>%
  separate(col = all,
           into = c("Age", "None", "Elementary", "High School", "College or Higher", "Missing", "Total", "Number of Males","Median Number of Years of Schooling"),
           sep = " ", # Works fine because the tables are nicely laid out
           remove = TRUE,
           fill = "right",
           extra = "drop"
  )

my_data_male

new_my_data_male <- my_data_male %>% 
  mutate(Age = as.character(Age)) %>%
  mutate(None = as.numeric(None)) %>%
  mutate(Elementary = as.numeric(Elementary)) %>%
  mutate(Missing = as.numeric(Missing)) %>%
  mutate(Total = as.integer(Total)) %>%
  mutate(`Number of Males` = as.integer(`Number of Males`)) %>%
  mutate(`High School` = as.numeric(`High School`)) %>%
  mutate(`Median Number of Years of Schooling` = as.numeric(`Median Number of Years of Schooling`)) %>%
  mutate(`College or Higher` = as.numeric(`College or Higher`))
new_my_data_male


just_page_i1 <- stri_split_lines(all_content[[38]])[[1]]  # see pg 38
just_page_i1
just_page_i1 <- just_page_i1[just_page_i1 != ""] # delete empty line
just_page_i1

# Manually for now, but could create some rules if needed
just_page_i1_no_header <- just_page_i1[10:length(just_page_i1)]
just_page_i1_no_header
# Get rid of the bottom matter
# Manually for now, but could create some rules if needed
just_page_i1_no_header_no_footer <- just_page_i1_no_header[c(1:13,34)] 
just_page_i1_no_header_no_footer

# Convert into a tibble
my_data_female <- tibble(all1 = just_page_i1_no_header_no_footer)
my_data_female

# Split columns
my_data_female %>%
  mutate(all1 = str_squish(all1)) # Any space more than two spaces is reduced

my_data_female <-
  my_data_female %>%
  mutate(all1 = str_squish(all1)) %>% 
  mutate(all1 = str_replace(all1, "25r796", "25,796")) %>% 
  mutate(all1 = str_replace(all1, "1120.0", "100.0")) %>%
  mutate(all1 = str_replace(all1, "100.0", "100")) %>%
  mutate(all1 = str_replace(all1, "0.0", "0")) %>%
  mutate(all1 = str_remove(all1, ",")) %>%
  separate(col = all1,
           into = c("Age", "None", "Elementary", "High School", "College or Higher", "Missing", "Total", "Number of Females","Median Number of Years of Schooling"),
           sep = " ", # Works fine because the tables are nicely laid out
           remove = TRUE,
           fill = "right",
           extra = "drop"
  )

my_data_female

new_my_data_female <- my_data_female %>% 
  mutate(Age = as.character(Age)) %>%
  mutate(None = as.numeric(None)) %>%
  mutate(Elementary = as.numeric(Elementary)) %>%
  mutate(Missing = as.numeric(Missing)) %>%
  mutate(Total = as.integer(Total)) %>%
  mutate(`Number of Females` = as.integer(`Number of Females`)) %>%
  mutate(`High School` = as.numeric(`High School`)) %>%
  mutate(`Median Number of Years of Schooling` = as.numeric(`Median Number of Years of Schooling`)) %>%
  mutate(`College or Higher` = as.numeric(`College or Higher`))
new_my_data_female



just_page_i <- stri_split_lines(all_content[[37]])[[1]]  # see pg 37
just_page_i
just_page_i <- just_page_i[just_page_i != ""] # delete empty line
just_page_i

# Manually for now, but could create some rules if needed
just_page_i2_no_header <- just_page_i[24:length(just_page_i)]
just_page_i2_no_header
# Get rid of the bottom matter
# Manually for now, but could create some rules if needed
just_page_i2_no_header_no_footer <- just_page_i2_no_header[c(1:2,20)] 
just_page_i2_no_header_no_footer

# Convert into a tibble
my_data_residence <- tibble(all2 = just_page_i2_no_header_no_footer)
my_data_residence

# Split columns
my_data_residence %>%
  mutate(all2 = str_squish(all2)) # Any space more than two spaces is reduced

my_data_residence_m <-
  my_data_residence %>%
  mutate(all2 = str_squish(all2)) %>% 
  mutate(all2 = str_replace(all2, "24r956", "24,956")) %>%
  mutate(all2 = str_replace(all2, "100.0", "100")) %>%
  mutate(all2 = str_remove(all2, ",")) %>%
  separate(col = all2,
           into = c("Region", "None", "Elementary", "High School", "College or Higher", "Missing", "Total", "Number of Males","Median Number of Years of Schooling"),
           sep = " ", # Works fine because the tables are nicely laid out
           remove = TRUE,
           fill = "right",
           extra = "drop"
  )

my_data_residence_m

new_my_data_residence_m <- my_data_residence_m %>% 
  mutate(Region = as.factor(Region)) %>%
  mutate(None = as.numeric(None)) %>%
  mutate(Elementary = as.numeric(Elementary)) %>%
  mutate(Missing = as.numeric(Missing)) %>%
  mutate(Total = as.integer(Total)) %>%
  mutate(`Number of Females` = as.integer(`Number of Males`)) %>%
  mutate(`High School` = as.numeric(`High School`)) %>%
  mutate(`Median Number of Years of Schooling` = as.numeric(`Median Number of Years of Schooling`)) %>%
  mutate(`College or Higher` = as.numeric(`College or Higher`))
new_my_data_residence_m


just_page_i1 <- stri_split_lines(all_content[[38]])[[1]]  # see pg 38
just_page_i1
just_page_i1 <- just_page_i1[just_page_i1 != ""] # delete empty line
just_page_i1

# Manually for now, but could create some rules if needed
just_page_i3_no_header <- just_page_i1[24:length(just_page_i1)]
just_page_i3_no_header
# Get rid of the bottom matter
# Manually for now, but could create some rules if needed
just_page_i3_no_header_no_footer <- just_page_i3_no_header[c(1:2,20)] 
just_page_i3_no_header_no_footer

# Convert into a tibble
my_data_residence_f <- tibble(all3 = just_page_i3_no_header_no_footer)
my_data_residence_f

# Split columns
my_data_residence_f %>%
  mutate(all3 = str_squish(all3)) # Any space more than two spaces is reduced

my_data_residence_f <-
  my_data_residence_f %>%
  mutate(all3 = str_squish(all3)) %>% 
  mutate(all3 = str_replace(all3, "25r796", "25,796")) %>%
  mutate(all3 = str_replace(all3, "100.0", "100")) %>%
  mutate(all3 = str_remove(all3, ",")) %>%
  separate(col = all3,
           into = c("Region", "None", "Elementary", "High School", "College or Higher", "Missing", "Total", "Number of Females","Median Number of Years of Schooling"),
           sep = " ", # Works fine because the tables are nicely laid out
           remove = TRUE,
           fill = "right",
           extra = "drop"
  )

my_data_residence_f


new_my_data_residence_f <- my_data_residence_f %>% 
  mutate(Region = as.factor(Region)) %>%
  mutate(None = as.numeric(None)) %>%
  mutate(Elementary = as.numeric(Elementary)) %>%
  mutate(Missing = as.numeric(Missing)) %>%
  mutate(Total = as.integer(Total)) %>%
  mutate(`Number of Females` = as.integer(`Number of Females`)) %>%
  mutate(`High School` = as.numeric(`High School`)) %>%
  mutate(`Median Number of Years of Schooling` = as.numeric(`Median Number of Years of Schooling`)) %>%
  mutate(`College or Higher` = as.numeric(`College or Higher`))
new_my_data_residence_f


