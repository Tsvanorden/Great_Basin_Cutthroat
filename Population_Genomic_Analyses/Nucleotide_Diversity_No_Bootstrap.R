library(tidyverse)
library(survey)
library(gtsummary)


##Hendrys

Hendrys = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/Hendrys_Check.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Hendrys_pi = theta_pi / numsites, Location = paste(seqnames, start))

Hendrys_2009 = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/Hendrys_2009WH.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Hendrys_2009_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Hendrys
hendrys_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = Hendrys
)


# Create survey design for Hendrys 2009
hendrys2009_design <- svydesign(
  ids = ~1,
  weights = ~numsites,
  data = Hendrys_2009
)


# Weighted mean + CI
hendrys_stats <- cbind(
  wMEAN = svymean(~Hendrys_pi, hendrys_design),
  wSD   = sqrt(svyvar(~Hendrys_pi, hendrys_design)[1]),
  confint(svymean(~Hendrys_pi, hendrys_design),
          df = degf(hendrys_design))
)
hendrys2009_stats <- cbind(
  wMEAN = svymean(~Hendrys_2009_pi, hendrys2009_design),
  wSD   = sqrt(svyvar(~Hendrys_2009_pi, hendrys2009_design)[1]),
  confint(svymean(~Hendrys_2009_pi, hendrys2009_design),
          df = degf(hendrys2009_design))
)


##Mill

Mill = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/MillWH.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Mill_pi = theta_pi / numsites, Location = paste(seqnames, start))

Mill_2009 = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/MillWh_2009.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Mill_2009_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Mill
mill_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = Mill
)


# Create survey design for Mill 2009
mill2009_design <- svydesign(
  ids = ~1,
  weights = ~numsites,
  data = Mill_2009
)


# Weighted mean + CI
mill_stats <- cbind(
  wMEAN = svymean(~Mill_pi, mill_design),
  wSD   = sqrt(svyvar(~Mill_pi, mill_design)[1]),
  confint(svymean(~Mill_pi, mill_design),
          df = degf(mill_design))
)
mill2009_stats <- cbind(
  wMEAN = svymean(~Mill_2009_pi, mill2009_design),
  wSD   = sqrt(svyvar(~Mill_2009_pi, mill2009_design)[1]),
  confint(svymean(~Mill_2009_pi, mill2009_design),
          df = degf(mill2009_design))
)


##South Baker

South_Baker = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/South_BakerWH.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(South_Baker_pi = theta_pi / numsites, Location = paste(seqnames, start))

South_Baker_2009 = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/South_BakerWH_2009.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(South_Baker_2009_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Mill
South_Baker_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = South_Baker
)


# Create survey design for Mill 2009
South_Baker2009_design <- svydesign(
  ids = ~1,
  weights = ~numsites,
  data = South_Baker_2009
)


# Weighted mean + CI
South_Baker_stats <- cbind(
  wMEAN = svymean(~South_Baker_pi, South_Baker_design),
  wSD   = sqrt(svyvar(~South_Baker_pi, South_Baker_design)[1]),
  confint(svymean(~South_Baker_pi, South_Baker_design),
          df = degf(South_Baker_design))
)
South_Baker2009_stats <- cbind(
  wMEAN = svymean(~South_Baker_2009_pi, South_Baker2009_design),
  wSD   = sqrt(svyvar(~South_Baker_2009_pi, South_Baker2009_design)[1]),
  confint(svymean(~South_Baker_2009_pi, South_Baker2009_design),
          df = degf(South_Baker2009_design))
)


##Strawberry

Strawberry = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/StrawberryWH.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Strawberry_pi = theta_pi / numsites, Location = paste(seqnames, start))

Strawberry_2009 = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/StrawberryWH_2009.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Strawberry_2009_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Mill
Strawberry_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = Strawberry
)


# Create survey design for Mill 2009
Strawberry2009_design <- svydesign(
  ids = ~1,
  weights = ~numsites,
  data = Strawberry_2009
)


# Weighted mean + CI
Strawberry_stats <- cbind(
  wMEAN = svymean(~Strawberry_pi, Strawberry_design),
  wSD   = sqrt(svyvar(~Strawberry_pi, Strawberry_design)[1]),
  confint(svymean(~Strawberry_pi, Strawberry_design),
          df = degf(Strawberry_design))
)
Strawberry2009_stats <- cbind(
  wMEAN = svymean(~Strawberry_2009_pi, Strawberry2009_design),
  wSD   = sqrt(svyvar(~Strawberry_2009_pi, Strawberry2009_design)[1]),
  confint(svymean(~Strawberry_2009_pi, Strawberry2009_design),
          df = degf(Strawberry2009_design))
)


##Smith

Smith = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/SmithWH.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Smith_pi = theta_pi / numsites, Location = paste(seqnames, start))

Smith_2009 = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/SmithWH_2009.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Smith_2009_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Mill
Smith_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = Smith
)


# Create survey design for Mill 2009
Smith2009_design <- svydesign(
  ids = ~1,
  weights = ~numsites,
  data = Smith_2009
)


# Weighted mean + CI
Smith_stats <- cbind(
  wMEAN = svymean(~Smith_pi, Smith_design),
  wSD   = sqrt(svyvar(~Smith_pi, Smith_design)[1]),
  confint(svymean(~Smith_pi, Smith_design),
          df = degf(Smith_design))
)
Smith2009_stats <- cbind(
  wMEAN = svymean(~Smith_2009_pi, Smith2009_design),
  wSD   = sqrt(svyvar(~Smith_2009_pi, Smith2009_design)[1]),
  confint(svymean(~Smith_2009_pi, Smith2009_design),
          df = degf(Smith2009_design))
)


##Bigwash

Bigwash = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/BigwashWH.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Bigwash_pi = theta_pi / numsites, Location = paste(seqnames, start))

Bigwash_2009 = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/BigwashWH_2010.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Bigwash_2009_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Bigwash
Bigwash_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = Bigwash
)


# Create survey design for Bigwash 2009
Bigwash2009_design <- svydesign(
  ids = ~1,
  weights = ~numsites,
  data = Bigwash_2009
)


# Weighted mean + CI
Bigwash_stats <- cbind(
  wMEAN = svymean(~Bigwash_pi, Bigwash_design),
  wSD   = sqrt(svyvar(~Bigwash_pi, Bigwash_design)[1]),
  confint(svymean(~Bigwash_pi, Bigwash_design),
          df = degf(Bigwash_design))
)
Bigwash2009_stats <- cbind(
  wMEAN = svymean(~Bigwash_2009_pi, Bigwash2009_design),
  wSD   = sqrt(svyvar(~Bigwash_2009_pi, Bigwash2009_design)[1]),
  confint(svymean(~Bigwash_2009_pi, Bigwash2009_design),
          df = degf(Bigwash2009_design))
)


##Deadman

Deadman = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/DeadmanWH.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Deadman_pi = theta_pi / numsites, Location = paste(seqnames, start))

Deadman_2009 = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/DeadmanWH_2010.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Deadman_2009_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Bigwash
Deadman_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = Deadman
)


# Create survey design for Bigwash 2009
Deadman2009_design <- svydesign(
  ids = ~1,
  weights = ~numsites,
  data = Deadman_2009
)


# Weighted mean + CI
Deadman_stats <- cbind(
  wMEAN = svymean(~Deadman_pi, Deadman_design),
  wSD   = sqrt(svyvar(~Deadman_pi, Deadman_design)[1]),
  confint(svymean(~Deadman_pi, Deadman_design),
          df = degf(Deadman_design))
)
Deadman2009_stats <- cbind(
  wMEAN = svymean(~Deadman_2009_pi, Deadman2009_design),
  wSD   = sqrt(svyvar(~Deadman_2009_pi, Deadman2009_design)[1]),
  confint(svymean(~Deadman_2009_pi, Deadman2009_design),
          df = degf(Deadman2009_design))
)

##Willard

Willard = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/WillardWH.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Willard_pi = theta_pi / numsites, Location = paste(seqnames, start))

Willard_2009 = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/WillardWH_2003.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Willard_2009_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Bigwash
Willard_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = Willard
)


# Create survey design for Bigwash 2009
Willard2009_design <- svydesign(
  ids = ~1,
  weights = ~numsites,
  data = Willard_2009
)


# Weighted mean + CI
Willard_stats <- cbind(
  wMEAN = svymean(~Willard_pi, Willard_design),
  wSD   = sqrt(svyvar(~Willard_pi, Willard_design)[1]),
  confint(svymean(~Willard_pi, Willard_design),
          df = degf(Willard_design))
)
Willard2009_stats <- cbind(
  wMEAN = svymean(~Willard_2009_pi, Willard2009_design),
  wSD   = sqrt(svyvar(~Willard_2009_pi, Willard2009_design)[1]),
  confint(svymean(~Willard_2009_pi, Willard2009_design),
          df = degf(Willard2009_design))
)


##PineRidge

PineRidge = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/Pine_RidgeWH.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(PineRidge_pi = theta_pi / numsites, Location = paste(seqnames, start))

PineRidge_2009 = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/Pine_RidgeWH_2003.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(PineRidge_2009_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Bigwash
PineRidge_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = PineRidge
)


# Create survey design for Bigwash 2009
PineRidge2009_design <- svydesign(
  ids = ~1,
  weights = ~numsites,
  data = PineRidge_2009
)


# Weighted mean + CI
PineRidge_stats <- cbind(
  wMEAN = svymean(~PineRidge_pi, PineRidge_design),
  wSD   = sqrt(svyvar(~PineRidge_pi, PineRidge_design)[1]),
  confint(svymean(~PineRidge_pi, PineRidge_design),
          df = degf(PineRidge_design))
)
PineRidge2009_stats <- cbind(
  wMEAN = svymean(~PineRidge_2009_pi, PineRidge2009_design),
  wSD   = sqrt(svyvar(~PineRidge_2009_pi, PineRidge2009_design)[1]),
  confint(svymean(~PineRidge_2009_pi, PineRidge2009_design),
          df = degf(PineRidge2009_design))
)

##South_Bigwash

South_Bigwash = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/South_BigWashWH.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(South_Bigwash_pi = theta_pi / numsites, Location = paste(seqnames, start))

South_Bigwash_2009 = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/South_BigWashWH_2010.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(South_Bigwash_2009_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Bigwash
South_Bigwash_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = South_Bigwash
)


# Create survey design for Bigwash 2009
South_Bigwash2009_design <- svydesign(
  ids = ~1,
  weights = ~numsites,
  data = South_Bigwash_2009
)


# Weighted mean + CI
South_Bigwash_stats <- cbind(
  wMEAN = svymean(~South_Bigwash_pi, South_Bigwash_design),
  wSD   = sqrt(svyvar(~South_Bigwash_pi, South_Bigwash_design)[1]),
  confint(svymean(~South_Bigwash_pi, South_Bigwash_design),
          df = degf(South_Bigwash_design))
)
South_Bigwash2009_stats <- cbind(
  wMEAN = svymean(~South_Bigwash_2009_pi, South_Bigwash2009_design),
  wSD   = sqrt(svyvar(~South_Bigwash_2009_pi, South_Bigwash2009_design)[1]),
  confint(svymean(~South_Bigwash_2009_pi, South_Bigwash2009_design),
          df = degf(South_Bigwash2009_design))
)



##South_Baker_lower_diversity

South_Baker_lower_diversity = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/South_BakerWH_lower_diversity.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(South_Baker_lower_diversity_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Bigwash
South_Baker_lower_diversity_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = South_Baker_lower_diversity
)

# Weighted mean + CI
South_Baker_lower_diversity_stats <- cbind(
  wMEAN = svymean(~South_Baker_lower_diversity_pi, South_Baker_lower_diversity_design),
  wSD   = sqrt(svyvar(~South_Baker_lower_diversity_pi, South_Baker_lower_diversity_design)[1]),
  confint(svymean(~South_Baker_lower_diversity_pi, South_Baker_lower_diversity_design),
          df = degf(South_Baker_lower_diversity_design))
)




##Silver Creek

Silver = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/Silver.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Silver_pi = theta_pi / numsites, Location = paste(seqnames, start))


# Create survey design for Bigwash
Silver_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = Silver
)

# Weighted mean + CI
Silver_stats <- cbind(
  wMEAN = svymean(~Silver_pi, Silver_design),
  wSD   = sqrt(svyvar(~Silver_pi, Silver_design)[1]),
  confint(svymean(~Silver_pi, Silver_design),
          df = degf(Silver_design))
)

##Lehman Creek

Lehman = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/Lehman.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Lehman_pi = theta_pi / numsites, Location = paste(seqnames, start))


# Create survey design for Bigwash
Lehman_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = Lehman
)

# Weighted mean + CI
Lehman_stats <- cbind(
  wMEAN = svymean(~Lehman_pi, Lehman_design),
  wSD   = sqrt(svyvar(~Lehman_pi, Lehman_design)[1]),
  confint(svymean(~Lehman_pi, Lehman_design),
          df = degf(Lehman_design))
)

##Snake Creek

Snake = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/Snake.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(Snake_pi = theta_pi / numsites, Location = paste(seqnames, start))


# Create survey design for Bigwash
Snake_design <- svydesign(
  ids = ~1,                     # no clustering
  weights = ~numsites,           # weight by number of sites
  data = Snake
)

# Weighted mean + CI
Snake_stats <- cbind(
  wMEAN = svymean(~Snake_pi, Snake_design),
  wSD   = sqrt(svyvar(~Snake_pi, Snake_design)[1]),
  confint(svymean(~Snake_pi, Snake_design),
          df = degf(Snake_design))
)





##Nucleotide Diversity
library(tidyverse)
library(readxl)

# Read the Excel file (replace with your path)
df <- read_excel("/Users/tannervanorden/Desktop/Great_Basin_New/Nulcleotide_Diversity.xlsx")

# Plot with points + error bars
nucleotide_diversity = ggplot(df, aes(x = Population, y = Nucleotide_Diversity, color = Sample_Date)) +
  geom_point(position = position_dodge(width = 0.5), size = 3) +
  scale_color_manual(values = c("Contemporary" = "royalblue", 
                                "Historic" = "coral")) +
  geom_errorbar(aes(ymin = low, ymax = high),
                position = position_dodge(width = 0.5),
                width = 0.8) +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggsave("/Users/tannervanorden/Desktop/Great_Basin_New/Nucleotide_Diversity.pdf", 
       plot = nucleotide_diversity, width = 8, height = 5)

library(tidyverse)
library(readxl)

df <- read_excel("/Users/tannervanorden/Desktop/Great_Basin_New/Heterozygosity.xlsx")

df <- df %>%
  mutate(Heterozygosity = as.numeric(sub("%", "", Heterozygosity)))

# Plot without error bars
Heterozygosity = ggplot(df, aes(x = Population, y = Heterozygosity, color = Sample_Date)) +
  geom_point(position = position_dodge(width = 0.5), size = 3) +
  theme_bw() +
  scale_color_manual(values = c("Contemporary" = "royalblue", 
                                "Historic" = "coral")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggsave("/Users/tannervanorden/Desktop/Great_Basin_New/Heterozygosity.pdf", 
       plot = Heterozygosity, width = 8, height = 5)
