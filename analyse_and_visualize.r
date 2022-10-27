#!/usr/bin/env Rscript
#
# Read data in file with format on the form:
#
#   "docid";"kpthesaurus number"
#
# e.g.
#
#   001-64730;149;148;201;316;265;579;379;216
#   001-64731;149;148;201;316;265;579;379;216
#
# and plot with descreasing order the number of occurances of each kpthesaurus number.
#
# Example:
#
#  Rscript analyse_and_print.r filename.dat
#
#  Will save the result in a plot with filename.pdf
#

args = commandArgs(trailingOnly=TRUE)

# test if there is at least one argument: if not, return an error
if (length(args)==0) {
  stop("You must include a .dat file to process", call.=FALSE)
} else if (length(args)==1) {
  filename = args[1]
}


library(tidyverse)


# Import data from json file
df <- read.table(filename, header=FALSE, col.names=c("docid", paste0("kpt",seq_len(20))) , sep=';', fill=TRUE)


dftidy <- df %>%
       pivot_longer( paste0("kpt",seq_len(20)), names_to="kpt" , values_to="id") %>%
       drop_na("id")


p <- dftidy %>%
  group_by(id) %>%
  summarize(Count=n()) %>%
  mutate(Count) %>%
  arrange(desc(Count)) %>%
  mutate(idx=1:nrow(.)) %>%
  ggplot(aes(x=idx, y=Count)) +
   geom_line() +
   scale_y_log10() +
   xlab("Sequentially ordered") +
   ylab("Kpthesaurus Count (log-scale)") +
   theme_bw()

plot_filename = paste(unlist(strsplit(filename, "\\."))[1], ".pdf", sep="")

ggsave(plot_filename, p)
