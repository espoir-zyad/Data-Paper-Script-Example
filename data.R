# Génération de données aléatoires pour chaque filière
set.seed(123)

# 1. Base de Données sur la Filière Maraîchage au Bénin
maraichage_benin <- data.frame(
  id = 1:100,
  nom = paste("maraicheur", 1:100),
  zone = sample(c("Grand Popo", "Sémè Kpodji", "Vallée de l’Ouémé"), 100, replace = TRUE),
  revenu_annuel = round(runif(100, 500000, 5000000), 2),
  type_acces = sample(c("Smartphone", "Ordinateur", "Tablette"), 100, replace = TRUE),
  connexion_internet = sample(c("2G", "3G", "4G", "Wi-Fi"), 100, replace = TRUE),
  frequence_acces = sample(c("Quotidienne", "Hebdomadaire", "Mensuelle"), 100, replace = TRUE),
  application_utilisee = sample(c("WhatsApp", "Facebook", "Mobile Money"), 100, replace = TRUE),
  frequence_utilisation = sample(c("Quotidienne", "Hebdomadaire", "Mensuelle"), 100, replace = TRUE),
  objectif_utilisation = sample(c("Communication", "Vente", "Gestion financière", "Recherche d'informations"), 100, replace = TRUE),
  impact_usages = sample(c("Amélioration des ventes", "Réduction des coûts", "Accès facilité aux informations"), 100, replace = TRUE),
  satisfaction = sample(c("Élevée", "Moyenne", "Faible"), 100, replace = TRUE)
)

# Sauvegarde dans un fichier CSV
write.csv(maraichage_benin, "usages_maraichage_benin.csv", row.names = FALSE)

# 2. Base de Données sur l’Élevage Laitier Transhumant au Sénégal
elevage_senegal <- data.frame(
  id = 101:200,
  nom = paste("Éleveur", 1:100),
  zone = sample(c("Richard-Toll", "Autres zones"), 100, replace = TRUE),
  revenu_annuel = round(runif(100, 1000000, 10000000), 2),
  type_acces = sample(c("Smartphone", "Ordinateur", "Tablette"), 100, replace = TRUE),
  connexion_internet = sample(c("2G", "3G", "4G", "Wi-Fi"), 100, replace = TRUE),
  frequence_acces = sample(c("Quotidienne", "Hebdomadaire", "Mensuelle"), 100, replace = TRUE),
  outil_numerique = sample(c("Application de collecte de lait", "Plateforme de gestion", "Application de paiement"), 100, replace = TRUE),
  frequence_utilisation = sample(c("Quotidienne", "Hebdomadaire", "Mensuelle"), 100, replace = TRUE),
  objectif_utilisation = sample(c("Gestion du lait", "Paiement", "Suivi de l’alimentation"), 100, replace = TRUE),
  impact = sample(c("Positif", "Neutre", "Négatif"), 100, replace = TRUE),
  satisfaction= sample(c("Accès limité", "Usages restreints", "Moins d’opportunités"), 100, replace = TRUE)
)

# Sauvegarde dans un fichier CSV
write.csv(elevage_senegal, "elevage_laitier_senegal.csv", row.names = FALSE)

# 3. Base de Données sur la Filière Cacao en Côte d'Ivoire
cacao_cote_ivoire <- data.frame(
  id = 201:300,
  nom = paste("Producteur", 1:100),
  zone = sample(c("Est", "Centre-Ouest", "Ouest"), 100, replace = TRUE),
  revenu_annuel = round(runif(100, 1000000, 20000000), 2),
  type_acces = sample(c("Smartphone", "Ordinateur", "Tablette"), 100, replace = TRUE),
  connexion_internet = sample(c("2G", "3G", "4G", "Wi-Fi"), 100, replace = TRUE),
  frequence_acces = sample(c("Quotidienne", "Hebdomadaire", "Mensuelle"), 100, replace = TRUE),
  outil_numerique = sample(c("Application de gestion des cultures", "Plateforme de commercialisation"), 100, replace = TRUE),
  frequence_utilisation = sample(c("Quotidienne", "Hebdomadaire", "Mensuelle"), 100, replace = TRUE),
  objectif_utilisation = sample(c("Gestion des cultures", "Vente", "Suivi de la qualité"), 100, replace = TRUE),
  impact_usages = sample(c("Amélioration des rendements", "Réduction des coûts", "Accès facilité aux informations"), 100, replace = TRUE),
  satisfaction = sample(c("Élevée", "Moyenne", "Faible"), 100, replace = TRUE)
)

# Sauvegarde dans un fichier CSV
write.csv(cacao_cote_ivoire, "cacao_cote_ivoire.csv", row.names = FALSE)
