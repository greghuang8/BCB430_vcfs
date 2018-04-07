# vcf explore
# explore the vcf files generated through multiple script runs
# managing data from initial SAM file reads from sratools 
# workflow: sam -> bam -> bcf -> vcf

install.packages("vcfR")
library(vcfR)

vcf1_chr1 <- vcf1[vcf1@fix[,1] == "1"]
vcf1_chr4 <- vcf1[vcf1@fix[,1] == "4"]
vcf1_chr10 <- vcf1[vcf1@fix[,1] == "10"]
vcf1_chr19 <- vcf1[vcf1@fix[,1] == "19"]

vcf1_chr1_df <- as.data.frame(getFIX(vcf1_chr1), stringsAsFactors = FALSE)
vcf1_chr4_df <- as.data.frame(getFIX(vcf1_chr4), stringsAsFactors = FALSE)
vcf1_chr10_df <- as.data.frame(getFIX(vcf1_chr10), stringsAsFactors = FALSE)
vcf1_chr19_df <- as.data.frame(getFIX(vcf1_chr19), stringsAsFactors = FALSE)

vcf1 <- read.vcfR("test1.vcf")
vcf1_all_df <- as.data.frame(getFIX(vcf1),stringsAsFactors = FALSE)

vcf2 <- read.vcfR("test2.vcf")
vcf2_all_df <- as.data.frame(getFIX(vcf2),stringsAsFactors = FALSE)

vcf3 <- read.vcfR("test3.vcf")
vcf3_all_df <- as.data.frame(getFIX(vcf3),stringsAsFactors = FALSE)

vcf4 <- read.vcfR("test4.vcf")
vcf4_all_df <- as.data.frame(getFIX(vcf4),stringsAsFactors = FALSE)

vcf5 <- read.vcfR("test5.vcf")
vcf5_all_df <- as.data.frame(getFIX(vcf5),stringsAsFactors = FALSE)

vcf6 <- read.vcfR("test6.vcf")
vcf6_all_df <- as.data.frame(getFIX(vcf6),stringsAsFactors = FALSE)

vcf7 <- read.vcfR("test7.vcf")
vcf7_all_df <- as.data.frame(getFIX(vcf7),stringsAsFactors = FALSE)

vcf8 <- read.vcfR("test8.vcf")
vcf8_all_df <- as.data.frame(getFIX(vcf8),stringsAsFactors = FALSE)

vcf9 <- read.vcfR("test9.vcf")
vcf9_all_df <- as.data.frame(getFIX(vcf9),stringsAsFactors = FALSE)

vcf10 <- read.vcfR("test10.vcf")
vcf10_all_df <- as.data.frame(getFIX(vcf10),stringsAsFactors = FALSE)

vcf11 <- read.vcfR("test11.vcf")
vcf11_all_df <- as.data.frame(getFIX(vcf11),stringsAsFactors = FALSE)

vcf12 <- read.vcfR("test12.vcf")
vcf12_all_df <- as.data.frame(getFIX(vcf12),stringsAsFactors = FALSE)

vcf13 <- read.vcfR("test13.vcf")
vcf13_all_df <- as.data.frame(getFIX(vcf13),stringsAsFactors = FALSE)

vcf14 <- read.vcfR("test14.vcf")
vcf14_all_df <- as.data.frame(getFIX(vcf14),stringsAsFactors = FALSE)

vcf1_chr1 <- vcf1[vcf1@fix[,1] == "1"]

all_patient_vcfs <- vcf1_all_df[,c(1,2,4)]

# create final table including all variants 
# for each of the sub-groups (250 people each)
all_patient_vcfs$alt_g1 <- vcf1_all_df$ALT
all_patient_vcfs$alt_g2 <- vcf2_all_df$ALT
all_patient_vcfs$alt_g3 <- vcf3_all_df$ALT
all_patient_vcfs$alt_g4 <- vcf4_all_df$ALT
all_patient_vcfs$alt_g5 <- vcf5_all_df$ALT
all_patient_vcfs$alt_g6 <- vcf6_all_df$ALT
all_patient_vcfs$alt_g7 <- vcf7_all_df$ALT
all_patient_vcfs$alt_g8 <- vcf8_all_df$ALT
all_patient_vcfs$alt_g9 <- vcf9_all_df$ALT
all_patient_vcfs$alt_g10 <- vcf10_all_df$ALT
all_patient_vcfs$alt_g11 <- vcf11_all_df$ALT
all_patient_vcfs$alt_g12 <- vcf12_all_df$ALT
all_patient_vcfs$alt_g13 <- vcf13_all_df$ALT
all_patient_vcfs$alt_g14 <- vcf14_all_df$ALT

write.csv(all_patient_vcfs, "all_variances.csv")



