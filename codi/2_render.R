#[30.V.2022]                                                 
##C A T A L E G#
#                                                 
#
#
#
#----------------------------------------------------------------------------------------# 
library("dplyr")
rm(list=ls())
gc()
#
dir_dades_desti="dades" 
dir_dades_origen="../../DADES/CATALEG" 
#
#
#
#
#
#
#
#--------------------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/1_lectura1.Rmd",
                  output_file=paste0(here::here("resultats/Informe_Lectura_Cataleg1_"),Sys.Date()),
                  params = list(dir_dades_origen=dir_dades_origen))
#--------------------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/1_lectura2.Rmd",
                  output_file=paste0(here::here("resultats/Informe_Lectura_Cataleg2_"),Sys.Date()),
                  params = list(dir_dades_origen=dir_dades_origen))
#--------------------------------------------------------------------------------------------------#
