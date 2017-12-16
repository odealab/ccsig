# Libraries

library(knitr)
library(DT)
library(devtools)
library(pander)
library(xtable)
options(xtable.floating = FALSE)
options(xtable.timestamp = "")
options(xtable.comment = FALSE)


# Data Frames

infodf <- data.frame(
  read.csv("info1.tsv", 
           sep = "\t"), 
  stringsAsFactors = FALSE)
names(infodf) <- c("Species Name", 
                   "Colony Shape", 
                   "Corallite Size (mm)", 
                   "Corallite Wall Thickness", 
                   "Columellae size (mm)", 
                   "Valley width (mm)", 
                   "No. of Centers per Series", 
                   "Septa Number", 
                   "Septal Cycle", 
                   "Septal Teeth", 
                   "Columella",
                   "Costae", 
                   "Coesnosteum",
                   "Branch diameter (cm)",
                   "Surface",
                   "Colony Form",
                   "Similar Species",
                   "Comments/Notes")

morph_raw <- data.frame(
  read.csv("glossary1.tsv", 
           sep = "\t"), 
  stringsAsFactors = FALSE)
names(morph_raw) <- c("Coral Morphology", 
                    "Definitions")
morph_raw[38:45,1:2] <- "NA"
morphdf <- na.omit(morph_raw)
