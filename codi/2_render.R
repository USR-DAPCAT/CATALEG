#C A T A L E G#:: [30.V.2022]
#----------------------------------------------------------------------------------------# 
library("dplyr")
rm(list=ls())
gc()
#
dir_dades_origen="../../DADES/CATALEG" 
dir_dades_origen_ACTUALITZACIO="../../../DADES/CATALEG/Cataleg_ORIGINAL_temp.xlsx"
# Aquetsa part, compararem el nostre CATALEG_PROJECTE amb el CATALEG_ORIGINAL, i ens dirà amb un Excel[Codis_Invest.xlsx] quants CODIS(cod) falten al CATALEG_ORIGINAL.
#--------------------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/1_lectura1.Rmd",
                  output_file=paste0(here::here("resultats/Informe_Lectura_Cataleg1_"),Sys.Date()),
                  params = list(dir_dades_origen=dir_dades_origen))
#
# Aquesta II part,rebrem del investigador els codis corregits i els afegirem al CATALEG ORIGINAL [actualiutazcio CATALEG ORIGINAL], 
# despres agafarem , nomes els codis del projecte, perque l investigador hi posi els AGR1.  
#--------------------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/1_lectura2.Rmd",
                  output_file=paste0(here::here("resultats/Informe_Lectura_Cataleg2_"),Sys.Date()),
                  params = list(dir_dades_origen=dir_dades_origen,
                                dir_dades_origen_ACTUALITZACIO=dir_dades_origen_ACTUALITZACIO))
#--------------------------------------------------------------------------------------------------#
