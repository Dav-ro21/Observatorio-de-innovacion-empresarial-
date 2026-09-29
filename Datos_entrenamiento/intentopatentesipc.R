library(dplyr)
library(tidyverse)
library(janitor)
library(reshape2)
library(haven)
library(openxlsx)
Patentes_publicadas <- read.csv(
  "C:/Users/david/Downloads/Patentes_publicadas_20260508.csv"
  )
Patentes_concedidas <- read.csv(
  "C:/Users/david/Downloads/Patentes_concedidas_20260508.csv"
)
Patentes_publicadas <- Patentes_publicadas %>% select(Sector,Titulo,Clasificacion)
Patentes_concedidas <- Patentes_concedidas %>% select(Sector,Titulo,Clasificacion)
Patentes_publicadas <- rbind(Patentes_concedidas,Patentes_publicadas)
ipcVsector <- Patentes_publicadas 


# ---------------------------------------------------------------------------

setwd("C:/Users/david/OneDrive/Documents/Universidad/archivos semillero")

write.csv(ipcVsector, file = "ipc_sector.csv")
