# Installation des packages
install.packages("dplyr")
install.packages("tidyr")

## Les verbes et fonctions du dplyr sont utilisés dans ce code

# Chargement des packages
library(dplyr)
library(tidyr)

# Lire les trois bases de données depuis les fichiers CSV
maraichage_benin <- read.csv("usages_maraichage_benin.csv")
elevage_senegal <- read.csv("elevage_laitier_senegal.csv")
cacao_cote_ivoire <- read.csv("cacao_cote_ivoire.csv")


# Harmonisation des colonnes pour les trois jeux de données
maraichage_benin <- maraichage_benin %>%
  rename(
    outil_numerique = application_utilisee,
    impact = impact_usages
  )

cacao_cote_ivoire <- cacao_cote_ivoire %>%
  rename(
    impact = impact_usages
  )


# Ajout des colonnes pour indiquer la filière et le pays
maraichage_benin <- maraichage_benin %>%
  mutate(filiere = "Maraîchage", pays = "Bénin")

elevage_senegal <- elevage_senegal %>%
  mutate(filiere = "Élevage Laitier", pays = "Sénégal")

cacao_cote_ivoire <- cacao_cote_ivoire %>%
  mutate(filiere = "Cacao", pays = "Côte d'Ivoire")


# Concaténation des trois bases
base_complete <- rbind(maraichage_benin, elevage_senegal, cacao_cote_ivoire)


# Vérification des doublons
doublons <- base_complete[duplicated(base_complete), ]
print(doublons)  # Permet d'afficher s'ils existent

# Suppression des doublons si nécessaire
base_complete <- base_complete %>%
  distinct()

# Vérification des valeurs manquantes
colSums(is.na(base_complete))

# Remplacons les valeurs manquantes par "Non renseigné" pour les colonnes catégorielles
base_complete <- base_complete %>%
  mutate(across(where(is.character), ~replace_na(., "Non renseigné")))


# Remplacons les valeurs manquantes dans les colonnes numériques par la moyenne
base_complete <- base_complete %>%
  mutate(across(where(is.numeric), ~ replace_na(., mean(., na.rm = TRUE))))



# Sauvegarde dans un fichier CSV
write.csv(base_complete, "base_complete.csv", row.names = FALSE)

