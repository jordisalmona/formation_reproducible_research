#' Download wildfinder dataset
#'
#' @description 
#' This function downloads the wildfinder dataset (text file) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>.
#' Three files `wildfinder-ecoregions_list.csv`, "wildfinder-ecoregions_species.csv", 
#' and "wildfinder-mammals_list.csv" will be stored in 
#' `data/wildfinder/`. This folder will be created if required.
#'
#' @return This function returns the path (`character`) to the downloaded file
#' (e.g. `data/wildfinder/wildfinder-ecoregions_list.csv`).
#' 
#' @export

dl_wildfinder_data <- function() {
  
  ## Destination path ---- 
  path <- here::here("data", "wildfinder")
  
  ## Create destination directory ----
  dir.create(path, showWarnings = FALSE, recursive = TRUE)
  
  ## File names ----
  filename1 <- "wildfinder-ecoregions_list.csv"
  filename2 <- "wildfinder-ecoregions_species.csv"
  filename3 <- "wildfinder-mammals_list.csv"
  
  for(filename in c(filename1,filename2,filename3)){
  ## GitHub base URL ----
  url <- "https://github.com/rdatatoolbox/datarepo/tree/main/data/wildfinder"
  
  ## Build full URL ----
  full_url <- paste0(base_url, filename)
  
  ## Build full path ----
  dest_file <- file.path(path, filename)
  
  ## Download file ----
  utils::download.file(url      = full_url,
                       destfile = dest_file,
                       mode     = "wb")
  
  return(dest_file)}
}