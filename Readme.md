# Projet Fracture Numérique - Description des Jeux de Données

Ce projet analyse l'usage des technologies numériques dans trois filières agricoles en Afrique de l'Ouest : le maraîchage au Bénin, l'élevage laitier au Sénégal, et la production de cacao en Côte d'Ivoire. Chaque jeu de données contient des informations sur les producteurs et leur utilisation des outils numériques.

## 1. Jeu de Données : Maraîchage au Bénin

**Fichier** : `usages_maraichage_benin.csv`
**Nombre d'enregistrements** : 100
**Description** : Ce jeu de données contient des informations sur les maraîchers au Bénin,
leur accès aux outils numériques et leur utilisation d'internet dans un cadre professionnel.

### Variables :
- `id` : Identifiant unique du maraîcher
- `nom` : Nom du maraîcher (anonymisé)
- `zone` : Région géographique d'activité (ex. Grand Popo, Sémè Kpodji, Vallée de l’Ouémé)
- `revenu_annuel` : Revenu annuel estimé (en francs CFA)
- `type_acces` : Type d'appareil utilisé pour accéder à internet (ex. Smartphone, Ordinateur, Tablette)
- `connexion_internet` : Type de connexion internet disponible (ex. 2G, 3G, 4G, Wi-Fi)
- `frequence_acces` : Fréquence d'accès à internet (ex. Quotidienne, Hebdomadaire, Mensuelle)
- `application_utilisee` : Applications utilisées (ex. WhatsApp, Facebook, Mobile Money)
- `frequence_utilisation` : Fréquence d'utilisation de ces applications
- `objectif_utilisation` : Objectif principal de l'utilisation des applications numériques (ex. Communication, Vente, Gestion financière)
- `impact_usages` : Impact perçu de l'usage des outils numériques (ex. Amélioration des ventes, Réduction des coûts)
- `satisfaction` : Niveau de satisfaction par rapport à l'usage des outils numériques (ex. Élevée, Moyenne, Faible)

---

## 2. Jeu de Données : Élevage Laitier au Sénégal

**Fichier** : `elevage_laitier_senegal.csv`
**Nombre d'enregistrements** : 100
**Description** : Ce jeu de données contient des informations sur les éleveurs laitiers au Sénégal et leurs usages des outils numériques, notamment pour la gestion du lait et des transactions.

### Variables :
- `id` : Identifiant unique de l'éleveur
- `nom` : Nom de l'éleveur (anonymisé)
- `zone` : Zone d'élevage (ex. Richard-Toll, Autres zones)
- `revenu_annuel` : Revenu annuel estimé (en francs CFA)
- `type_acces` : Type d'appareil utilisé pour accéder à internet (ex. Smartphone, Ordinateur, Tablette)
- `connexion_internet` : Type de connexion internet disponible (ex. 2G, 3G, 4G, Wi-Fi)
- `frequence_acces` : Fréquence d'accès à internet (ex. Quotidienne, Hebdomadaire, Mensuelle)
- `outil_numerique` : Outils numériques utilisés (ex. Application de collecte de lait, Plateforme de gestion)
- `frequence_utilisation` : Fréquence d'utilisation des outils numériques
- `objectif_utilisation` : Objectifs principaux de l'utilisation des outils numériques (ex. Gestion du lait, Paiement, Suivi de l’alimentation)
- `impact` : Impact perçu des usages numériques (ex. Positif, Neutre, Négatif)
- `satisfaction` : Niveau de satisfaction quant à l'accès et l'usage des outils numériques

---

## 3. Jeu de Données : Cacao en Côte d'Ivoire

**Fichier** : `cacao_cote_ivoire.csv`
**Nombre d'enregistrements** : 100
**Description** : Ce jeu de données regroupe des informations sur les producteurs de cacao en Côte d'Ivoire, leur accès aux technologies numériques et l'utilisation des plateformes numériques pour la gestion des cultures et la vente.

### Variables :
- `id` : Identifiant unique du producteur
- `nom` : Nom du producteur (anonymisé)
- `zone` : Région de production (ex. Est, Centre-Ouest, Ouest)
- `revenu_annuel` : Revenu annuel estimé (en francs CFA)
- `type_acces` : Type d'appareil utilisé pour accéder à internet (ex. Smartphone, Ordinateur, Tablette)
- `connexion_internet` : Type de connexion internet disponible (ex. 2G, 3G, 4G, Wi-Fi)
- `frequence_acces` : Fréquence d'accès à internet (ex. Quotidienne, Hebdomadaire, Mensuelle)
- `outil_numerique` : Outils numériques utilisés (ex. Application de gestion des cultures, Plateforme de commercialisation)
- `frequence_utilisation` : Fréquence d'utilisation des outils numériques
- `objectif_utilisation` : Objectif principal de l'utilisation des outils numériques (ex. Gestion des cultures, Vente)
- `impact_usages` : Impact perçu des outils numériques sur la productivité et la gestion des exploitations
- `satisfaction` : Niveau de satisfaction par rapport aux services numériques utilisés (ex. Élevée, Moyenne, Faible)

---

## Utilisation des Jeux de Données

Ces jeux de données sont utilisés pour analyser les tendances et l'impact de la fracture numérique dans le secteur agricole. Ils permettent d'évaluer comment les technologies numériques influencent la productivité, la gestion et les revenus des acteurs dans différentes filières agricoles.





# Analyse des Usages Numériques dans Trois Filières Agricoles en Afrique de l'Ouest

---

## Étapes de l'Analyse

### 1. Chargement des Données
La première étape a consisté à charger les trois jeux de données depuis des fichiers CSV. Chaque fichier correspond à une filière agricole spécifique dans un pays différent.

### 2. Harmonisation des Variables
Afin de pouvoir effectuer une analyse comparative entre les différents secteurs, il a été nécessaire de renommer certaines colonnes afin d'harmoniser les jeux de données. Par exemple, les colonnes relatives aux applications numériques et aux impacts ont été uniformisées.

### 3. Ajout des Métadonnées
Des colonnes supplémentaires ont été ajoutées à chaque jeu de données pour indiquer la filière agricole concernée et le pays d'origine. Cela permet d'effectuer des analyses globales ou spécifiques par filière ou pays.

### 4. Fusion des Jeux de Données
Les trois jeux de données ont été combinés en un seul jeu de données complet afin de permettre une analyse plus large de l'usage des technologies numériques dans ces différentes filières agricoles.

### 5. Détection et Suppression des Doublons
Une vérification des doublons a été réalisée sur les données fusionnées. Les doublons identifiés ont été supprimés afin d'assurer que chaque observation soit unique.

### 6. Gestion des Valeurs Manquantes
Deux stratégies ont été adoptées pour traiter les valeurs manquantes :
- Pour les colonnes catégorielles (telles que le type d'accès à Internet ou la fréquence d'utilisation), les valeurs manquantes ont été remplacées par "Non renseigné".
- Pour les colonnes numériques (comme le revenu annuel), les valeurs manquantes ont été remplacées par la moyenne des valeurs existantes dans la colonne.



---

## Auteurs

Ce projet a été réalisé par [Espoir Zyad KOSSOU] dans le cadre d'une analyse de données sur les usages numériques dans les secteurs agricoles africains.

