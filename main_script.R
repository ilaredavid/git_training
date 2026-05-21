# Instalar multiples librerias (Si no lo estan)
check.packages <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
packages<-c("data.table","purrr", "parallel", "mirai", "sf", "terra",
            "arrow", "geoarrow", "duckdb")
check.packages(packages)

# Load libraries
library(data.table)
library(purr)
library(parallel)
library(mirai)
library(sf)
library(terra)
library(arrow)
library(geoarrow)
library(duckdb)

iris_data <- c(1,2,3,4)