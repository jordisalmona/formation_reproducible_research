## Installation de 'remotes' ----
install.packages("remotes")

## Installation de 'rcompendium' ----
remotes::install_github("frbcesab/rcompendium")

## Chargement du package -----
library("rcompendium")

## Stockage de vos informations ----
set_credentials(given    = "Jordi",
                family   = "Salmona", 
                email    = "jordi.salmona@ird.fr", 
                orcid    = "0000-0002-1950-5805", 
                protocol = "ssh")

## Vérification (après redémarrage de R) ----
getOption("email")
getOption("family")

## Call the library 'here'
library(here)

## Ajout d'un README ----
utils::file.edit(here::here("README.md"))
here::here("README.md") 

## Ajout d'un fichier DESCRIPTION ----
rcompendium::add_description()

## Ajout d'une licence ----
rcompendium::add_license(license = "GPL-2")

## Ajout de sous-répertoires ----
rcompendium::add_compendium(compendium = c("data", "analyses", "R", "figures", "outputs"))

## Ajout d'un script R ----
utils::file.edit(here::here("analyses", "download-data.R"))

## Création du fichier pour la 1ere fonction ----
usethis::use_r("dl_pantheria_data")

## Création du fichier pour la 1ere fonction ----
usethis::use_r("dl_wildfinder_data")

## Génération de la doc ----
devtools::document()

## Ouverture du script précédent ----
utils::file.edit(here::here("analyses", "download-data.R"))

## Ajout des dépendances dans DESCRIPTION ----
usethis::use_package(package = "here")
usethis::use_package(package = "utils")


## Ajout d'une dépendance forte ----
usethis::use_package(package = "ggplot2", type = "Depends")
