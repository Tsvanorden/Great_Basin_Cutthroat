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



##South_Baker


South_Baker_2009 = as.data.frame(readPestPG("/Users/tannervanorden/Desktop/Great_Basin_New/South_BakerWH_2009.thetas.windows.gz.pestPG")) %>% 
  drop_na() %>% 
  mutate(South_Baker_2009_pi = theta_pi / numsites, Location = paste(seqnames, start))

# Create survey design for Mill 2009
South_Baker2009_design <- svydesign(
  ids = ~1,
  weights = ~numsites,
  data = South_Baker_2009
)


South_Baker2009_stats <- cbind(
  wMEAN = svymean(~South_Baker_2009_pi, South_Baker2009_design),
  wSD   = sqrt(svyvar(~South_Baker_2009_pi, South_Baker2009_design)[1]),
  confint(svymean(~South_Baker_2009_pi, South_Baker2009_design),
          df = degf(South_Baker2009_design))
)


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


Bootstrap_Nucleotide_Diversity <- function(nucleotide_diversity_vector, sites_per_window, number_of_bootstraps) {
  vals <- rep(NA, number_of_bootstraps)  # initialize blank vector
  n <- length(nucleotide_diversity_vector)
  for(i in 1:number_of_bootstraps){
    
    ##Use randomly sampled ids so that it is possible to keep track of each randomly sampled windows weights
    resampled_ids <- sample(1:n, size = n, replace = TRUE)
    resampled_nucleotide_diversity = nucleotide_diversity_vector[resampled_ids]
    resampled_weights = sites_per_window[resampled_ids]
    
    vals[i] <- weighted.mean(resampled_nucleotide_diversity, resampled_weights)
  }
  
  return(quantile(vals, c(0.025, 0.975)))
}


paste("Hendrys Creek confidence interval is", Bootstrap_Nucleotide_Diversity(Hendrys$Hendrys_pi, Hendrys$numsites, 10000))
paste("Hendrys Creek 2009 confidence interval is", Bootstrap_Nucleotide_Diversity(Hendrys_2009$Hendrys_2009_pi, Hendrys_2009$numsites, 10000))

paste("Mill Creek confidence interval is", Bootstrap_Nucleotide_Diversity(Mill$Mill_pi, Mill$numsites, 10000))
paste("Mill Creek confidence interval is", Bootstrap_Nucleotide_Diversity(Mill_2009$Mill_2009_pi, Mill_2009$numsites, 10000))

paste("Strawberry Creek confidence interval is", Bootstrap_Nucleotide_Diversity(Strawberry$Strawberry_pi, Strawberry$numsites, 10000))
paste("Strawberry Creek 2009 confidence interval is", Bootstrap_Nucleotide_Diversity(Strawberry_2009$Strawberry_2009_pi, Strawberry_2009$numsites, 10000))

paste("Smith Creek confidence interval is", Bootstrap_Nucleotide_Diversity(Smith$Smith_pi, Smith$numsites, 10000))
paste("Smith Creek 2009 confidence interval is", Bootstrap_Nucleotide_Diversity(Smith_2009$Smith_2009_pi, Smith_2009$numsites, 10000))

paste("Big Wash Creek confidence interval is", Bootstrap_Nucleotide_Diversity(Bigwash$Bigwash_pi, Bigwash$numsites, 10000))
paste("Big Wash Creek 2009 confidence interval is", Bootstrap_Nucleotide_Diversity(Bigwash_2009$Bigwash_2009_pi, Bigwash_2009$numsites, 10000))

paste("Deadman Creek confidence interval is", Bootstrap_Nucleotide_Diversity(Deadman$Deadman_pi, Deadman$numsites, 10000))
paste("Deadman Creek 2009 confidence interval is", Bootstrap_Nucleotide_Diversity(Deadman_2009$Deadman_2009_pi, Deadman_2009$numsites, 10000))

paste("Willard Creek confidence interval is", Bootstrap_Nucleotide_Diversity(Willard$Willard_pi, Willard$numsites, 10000))
paste("Willard Creek 2009 confidence interval is", Bootstrap_Nucleotide_Diversity(Willard_2009$Willard_2009_pi, Willard_2009$numsites, 10000))

paste("South Fork Big Wash Creek confidence interval is", Bootstrap_Nucleotide_Diversity(South_Bigwash$South_Bigwash_pi, South_Bigwash$numsites, 10000))
paste("South Fork Big Wash Creek 2009 confidence interval is", Bootstrap_Nucleotide_Diversity(South_Bigwash_2009$South_Bigwash_2009_pi, South_Bigwash_2009$numsites, 10000))

paste("South Fork Baker Creek confidence interval is", Bootstrap_Nucleotide_Diversity(South_Baker_lower_diversity$South_Baker_lower_diversity_pi, South_Baker_lower_diversity$numsites, 10000))
paste("South Fork Baker Creek 2009 confidence interval is", Bootstrap_Nucleotide_Diversity(South_Baker_2009$South_Baker_2009_pi, South_Baker_2009$numsites, 10000))


##Nucleotide Diversity
library(tidyverse)
library(readxl)

# Read the Excel file (replace with your path)
df <- read_excel("/Users/tannervanorden/Desktop/Great_Basin_New/Nulcleotide_Diversity_Bootstrap.xlsx")

# Plot with points + error bars

df$Sample_Date <- factor(df$Sample_Date, 
                         levels = c("Historic", "Contemporary"))

nucleotide_diversity = ggplot(df, aes(x = Population, y = Nucleotide_Diversity, color = Sample_Date)) +
  geom_point(position = position_dodge(width = 0.5), size = 3) +
  scale_color_manual(values = c("Contemporary" = "royalblue", 
                                "Historic" = "coral")) +
  geom_errorbar(aes(ymin = low, ymax = high),
                position = position_dodge(width = 0.5),
                width = 0.8) +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggsave("/Users/tannervanorden/Desktop/Great_Basin_New/Nucleotide_Diversity_Final.pdf", 
       plot = nucleotide_diversity, width = 8, height = 5)

library(tidyverse)
library(readxl)

df <- read_excel("/Users/tannervanorden/Desktop/Great_Basin_New/Heterozygosity_Bootstrap.xlsx")

df <- df %>%
  mutate(Heterozygosity = as.numeric(sub("%", "", Heterozygosity)))

df$Sample_Date <- factor(df$Sample_Date, 
                         levels = c("Historic", "Contemporary"))

# Plot without error bars
Heterozygosity = ggplot(df, aes(x = Population, y = Heterozygosity, color = Sample_Date)) +
  geom_point(position = position_dodge(width = 0.5), size = 3) +
  theme_bw() +
  scale_color_manual(values = c("Contemporary" = "royalblue", 
                                "Historic" = "coral")) +
  geom_errorbar(aes(ymin = low, ymax = high),
                position = position_dodge(width = 0.5),
                width = 0.8) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggsave("/Users/tannervanorden/Desktop/Great_Basin_New/Heterozygosity_Final.pdf", 
       plot = Heterozygosity, width = 8, height = 5)
