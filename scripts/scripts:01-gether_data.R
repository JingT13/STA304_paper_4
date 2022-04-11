
#Here we use pointblank to check the validation. 



residence_f_pointblank <-
  new_my_data_residence_f %>%
  rename(
    "fct_group_Region" = "Region",
    "number_group_High_School" = "High School",
    "number_group_College_or_Higher" = "College or Higher",
    "number_group_Number_of_Females" = "Number of Females",
    "number_group_Median_Number_of_Years_of_Schooling" = "Median Number of Years of Schooling"
  ) 

agent1 <-
  create_agent(tbl = residence_f_pointblank) %>%
  col_is_factor(columns = vars(fct_group_Region)) %>%
  col_is_numeric(columns = vars(None)) %>%
  col_is_numeric(columns = vars(Elementary)) %>%
  col_is_numeric(columns = vars(number_group_High_School)) %>%
  col_is_numeric(columns = vars(number_group_College_or_Higher))%>%
  col_is_numeric(columns = vars(Missing)) %>%
  col_is_integer(columns = vars(Total)) %>%
  col_is_integer(columns = vars(number_group_Number_of_Females)) %>%
  col_is_numeric(columns = vars(number_group_Median_Number_of_Years_of_Schooling)) %>%
  interrogate()
agent1


residence_m_pointblank <-
  new_my_data_residence_m %>%
  rename(
    "fct_group_Region" = "Region",
    "number_group_High_School" = "High School",
    "number_group_College_or_Higher" = "College or Higher",
    "number_group_Number_of_Females" = "Number of Females",
    "number_group_Median_Number_of_Years_of_Schooling" = "Median Number of Years of Schooling"
  ) 


agent2 <-
  create_agent(tbl = residence_m_pointblank) %>%
  col_is_factor(columns = vars(fct_group_Region)) %>%
  col_is_numeric(columns = vars(None)) %>%
  col_is_numeric(columns = vars(Elementary)) %>%
  col_is_numeric(columns = vars(number_group_High_School)) %>%
  col_is_numeric(columns = vars(number_group_College_or_Higher))%>%
  col_is_numeric(columns = vars(Missing)) %>%
  col_is_integer(columns = vars(Total)) %>%
  col_is_integer(columns = vars(number_group_Number_of_Females)) %>%
  col_is_numeric(columns = vars(number_group_Median_Number_of_Years_of_Schooling)) %>%
  interrogate()
agent2

age_male_pointblank <-
  new_my_data_male %>%
  rename(
    "chr_group_Age" = "Age",
    "number_group_High_School" = "High School",
    "number_group_College_or_Higher" = "College or Higher",
    "number_group_Number_of_Males" = "Number of Males",
    "number_group_Median_Number_of_Years_of_Schooling" = "Median Number of Years of Schooling"
  ) 

agent3 <-
  create_agent(tbl = age_male_pointblank) %>%
  col_is_character(columns = vars(chr_group_Age)) %>%
  col_is_numeric(columns = vars(None)) %>%
  col_is_numeric(columns = vars(Elementary)) %>%
  col_is_numeric(columns = vars(number_group_High_School)) %>%
  col_is_numeric(columns = vars(number_group_College_or_Higher))%>%
  col_is_numeric(columns = vars(Missing)) %>%
  col_is_integer(columns = vars(Total)) %>%
  col_is_integer(columns = vars(number_group_Number_of_Males)) %>%
  col_is_numeric(columns = vars(number_group_Median_Number_of_Years_of_Schooling)) %>%
  interrogate()
agent3

age_female_pointblank <-
  new_my_data_female %>%
  rename(
    "chr_group_Age" = "Age",
    "number_group_High_School" = "High School",
    "number_group_College_or_Higher" = "College or Higher",
    "number_group_Number_of_Females" = "Number of Females",
    "number_group_Median_Number_of_Years_of_Schooling" = "Median Number of Years of Schooling"
  ) 

agent4 <-
  create_agent(tbl = age_female_pointblank) %>%
  col_is_character(columns = vars(chr_group_Age)) %>%
  col_is_numeric(columns = vars(None)) %>%
  col_is_numeric(columns = vars(Elementary)) %>%
  col_is_numeric(columns = vars(number_group_High_School)) %>%
  col_is_numeric(columns = vars(number_group_College_or_Higher))%>%
  col_is_numeric(columns = vars(Missing)) %>%
  col_is_integer(columns = vars(Total)) %>%
  col_is_integer(columns = vars(number_group_Number_of_Females)) %>%
  col_is_numeric(columns = vars(number_group_Median_Number_of_Years_of_Schooling)) %>%
  interrogate()
agent4

