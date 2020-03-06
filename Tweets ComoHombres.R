######################################################################
#Análisis del #ComoHombres
#Elaborado por: Gatitos Contra la Desigualdad 
#               Twitter: @gatitosvsdesig
#               Github: @gatitoscontraladesigualdad
######################################################################

#Los tweets descargados se pueden encontrar acá:


##############
#Configuración
rm(list = ls())
options(scipen=999) # Prevenir notación científica
library(pacman)
# Abrimos las paqueterías con un sólo comando:
p_load(haven, readr, readxl, ggplot2, shiny, tidyverse, knitr,gmodels,foreign,expss,fishualize, viridis,
       rtweet, wordcloud, igraph, tm, widyr, tidytext, rcorpora, purrr, webshot,wordcloud2, quanteda)
###Carpeta de trabajo y carga de datos
setwd ("~/Documents/Data Science/Repos/Gatitos/2020A/ComoHombres")


#No sé para qué es esto jeje salu2
knitr::opts_chunk$set(message=FALSE, warning=FALSE)


#Obtención de tweets
tweets_como_hombres <- rtweet::search_tweets(
  q = "ComoHombres", 
  n=18000,
  include_rts = TRUE) 

write_as_csv(tweets_como_hombres, "tweets_como_hombres.csv")
