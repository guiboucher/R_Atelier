
# OBJECTIF ------------------------------------------------------------------------------------

# Vérifier si les utilisateurs sont actifs dans l'intervalle 2021 à 2025



# Code en mode C'EST MA PREMIÈRE FOIS ---------------------------------------------------------

library(readr)
library(dplyr)  # oui je sais je triche, on l'apprend la semaine prochaine!

user2021 <- read_csv2("inspq/02 - Intermédiaire - Blitz/data/user_2021.csv")  # import
user2021 <- user2021 %>% mutate(ANNEE = 2021)  # créer colonne ANNEE = année du fichier importé
user2022 <- read_csv2("inspq/02 - Intermédiaire - Blitz/data/user_2022.csv")
user2022 <- user2022 %>% mutate(ANNEE = 2022)  # créer colonne ANNEE = année du fichier importé
user2023 <- read_csv2("inspq/02 - Intermédiaire - Blitz/data/user_2023.csv")
user2023 <- user2023 %>% mutate(ANNEE = 2023)  # créer colonne ANNEE = année du fichier importé
user2024 <- read_csv2("inspq/02 - Intermédiaire - Blitz/data/user_2024.csv")
user2024 <- user2024 %>% mutate(ANNEE = 2024)  # créer colonne ANNEE = année du fichier importé
user2025 <- read_csv2("inspq/02 - Intermédiaire - Blitz/data/user_2025.csv")
user2025 <- user2025 %>% mutate(ANNEE = 2025)  # créer colonne ANNEE = année du fichier importé

user_total <- bind_rows(user2021, user2022, user2023, user2024, user2025)






# Boucle FOR ----------------------------------------------------------------------------------

an_analyse <- 2021:2025
user_total <- vector("list", length(an_analyse))
for (i in 1:length(an_analyse)) {
  user_total[[i]] <- read_csv2(
    paste0("inspq/02 - Intermédiaire - Blitz/data/user_", an_analyse[[i]], ".csv"),
    show_col_types = FALSE
  )
  user_total[[i]] <- user_total[[i]] %>% mutate(ANNEE = an_analyse[[i]])
}
user_total <- bind_rows(user_total)
