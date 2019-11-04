library(gutenbergr)
library(tidyverse)
library(tidytext)
library(ggplot2)

#Grimms Fairy Tales
grimm <- gutenberg_download(2591)
tidygrimm <- grimm %>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words)
