# Data-moderate case --------------------------------------------------
## Using Just Another Bayesian Biomass Assessment (JABBA)
## Website: https://github.com/jabbamodel/JABBA

# Install required R packages -------------------------------------
required_pkg <- c(
  "devtools", "here", "gplots",
  "coda", "rjags", "R2jags",
  "fitdistrplus", "reshape",
  "ggplot2", "reshape2"
)

pkg_to_install <- required_pkg[!(required_pkg %in%
  installed.packages()[, "Package"])]
if (length(pkg_to_install)) install.packages(pkg_to_install)

lapply(required_pkg, library, character.only = TRUE)

devtools::install_github("jabbamodel/JABBA",
  ref = "d73313debf9326f2be920846ee361b3dcca8c22d"
)

# devtools::install_github("jabbamodel/JABBA",
#   ref = "d780f6dba48186c6c0580f6cb6c559011a77325a"
# )
library(JABBA)

# Case 0: default stock assessment run ----------------------------

# Load simulated input data
source(here::here("Rscript", "simulation.R"))
source(here::here("Rscript", "load_indices.R"))


# Load EwE biomass data
functional_groups <- c(
  "StripedBass0",
  "StripedBass2_5",
  "StripedBass6",
  "AtlanticMenhaden0",
  "AtlanticMenhaden1",
  "AtlanticMenhaden2",
  "AtlanticMenhaden3",
  "AtlanticMenhaden4",
  "AtlanticMenhaden5",
  "AtlanticMenhaden6",
  "SpinyDogfish",
  "BluefishJuvenile",
  "BluefishAdult",
  "WeakfishJuvenile",
  "WeakfishAdult",
  "AtlanticHerring0_1",
  "AtlanticHerring2",
  "Anchovies",
  "Benthos",
  "Zooplankton",
  "Phytoplankton",
  "Detritus"
)

age_name <- paste0("AtlanticMenhaden", 0:6)

biomass <- read_ewe_output(
  file_path = here::here("data", "ewe", "7ages", "ecosim_with_environmental_driver", "amo_pcp"),
  file_names = "biomass_monthly.csv",
  skip_nrows = 8,
  plot = FALSE,
  figure_titles = NULL,
  functional_groups = functional_groups,
  figure_colors = NULL
)

time_id <- seq(1, nrow(biomass[[1]]), by = 12)
biomass_ewe <- apply(biomass[[1]][, age_name], 1, sum) * 1000000
# Set up JABBA base case assessment

model_year <- 1985:2012
projection_year <- 2013:2017
output_dir <- here::here("data", "data_moderate")

# case 0.1: K and r with large CV
ss_case01_input <- generate_jabba(
  assessment_name = "case01",
  output_dir = output_dir,
  sa_data = sa_data,
  model_year = model_year,
  projection_year = projection_year
)

ss_case01 <- JABBA::fit_jabba(
  jbinput = ss_case01_input,
  save.jabba = TRUE,
  save.all = TRUE,
  save.prj = TRUE,
  output.dir = output_dir,
  save.csvs = T
)


# Plot figures using JABBA
JABBA::jabba_plots(jabba = ss_case01, output.dir = output_dir)
# plot with CIs (80% for projections)
# JABBA::jbplot_prj(ss_case01, type = "BBmsy", output.dir = output_dir)
# JABBA::jbplot_prj(ss_case01, type = "BB0", output.dir = output_dir)
# JABBA::jbplot_prj(ss_case01, type = "FFmsy", output.dir = output_dir)

# case 0.2: K and r with small CV and update K based on true biomass from EwE
ss_case02_input <- ss_case01_input
ss_case02_input$settings$assessment <- "case02"
ss_case02_input$jagsdata$K.pr <- c(4000000, sqrt(log(0.3^2 + 1)))
ss_case02_input$jagsdata$r.pr <- c(0.8, 0.1)

ss_case02 <- JABBA::fit_jabba(
  jbinput = ss_case02_input,
  save.jabba = TRUE,
  save.all = TRUE,
  save.prj = TRUE,
  output.dir = output_dir,
  save.csvs = T
)

# Plot figures using JABBA
JABBA::jabba_plots(jabba = ss_case02, output.dir = output_dir)
# plot with CIs (80% for projections)
# JABBA::jbplot_prj(ss_case01, type = "BBmsy")
# JABBA::jbplot_prj(ss_case01, type = "BB0")
# JABBA::jbplot_prj(ss_case01, type = "FFmsy")

# Plot figures for cases 0.1 and 0.2 ----------------------------------------------------

fmsy01 <- rep(ss_case01$posteriors$Hmsy, times = (length(projection_year) + 1) * length(ss_case01_input$jagsdata$TAC[1, ]))
ss_case01$prj_posterior$f <- ss_case01$prj_posterior$harvest * fmsy01

fmsy02 <- rep(ss_case01$posteriors$Hmsy, times = (length(projection_year) + 1) * length(ss_case01_input$jagsdata$TAC[1, ]))
ss_case02$prj_posterior$f <- ss_case02$prj_posterior$harvest * fmsy02

bmsy01 <- rep(ss_case01$posteriors$SBmsy, times = (length(projection_year) + 1) * length(ss_case01_input$jagsdata$TAC[1, ]))
ss_case01$prj_posterior$biomass <- ss_case01$prj_posterior$stock * bmsy01

bmsy02 <- rep(ss_case02$posteriors$SBmsy, times = (length(projection_year) + 1) * length(ss_case02_input$jagsdata$TAC[1, ]))
ss_case02$prj_posterior$biomass <- ss_case02$prj_posterior$stock * bmsy02

# plot biomass over time
par(mfrow = c(1, 2))
ylim <- range(
  biomass_ewe[time_id],
  ss_case01$timeseries[, "mu", "B"],
  ss_case02$timeseries[, "mu", "B"]
)
plot(c(model_year, projection_year),
  biomass_ewe[time_id],
  xlab = "Year", ylab = "Biomass (mt)",
  ylim = ylim,
  pch = 16
)
lines(model_year, ss_case01$timeseries[, "mu", "B"])
lines(model_year, ss_case02$timeseries[, "mu", "B"], col = 2, lty = 2)
legend("bottomright",
  c("EWE", "JABBA case 0.1", "JABBA case 0.2"),
  bty = "n",
  pch = c(16, NA, NA),
  lty = c(NA, 1, 2),
  col = c(1, 1, 2)
)

ylim <- range(
  biomass_ewe[time_id],
  ss_case01$timeseries[, , "B"],
  ss_case02$timeseries[, , "B"]
)
plot(c(model_year, projection_year),
  biomass_ewe[time_id],
  xlab = "Year", ylab = "Biomass (mt)",
  ylim = ylim,
  pch = 16
)

lines(model_year, ss_case01$timeseries[, "mu", "B"])
lines(model_year, ss_case01$timeseries[, "lci", "B"], lty = 2)
lines(model_year, ss_case01$timeseries[, "uci", "B"], lty = 2)

lines(model_year, ss_case02$timeseries[, "mu", "B"], col = 2)
lines(model_year, ss_case02$timeseries[, "lci", "B"], lty = 2, col = 2)
lines(model_year, ss_case02$timeseries[, "uci", "B"], lty = 2, col = 2)

# Plot biomass based on last year of catch
for (i in 1:length(projection_year)) {
  subdata_id <- (ss_case02$prj_posterior$year == projection_year[i]) & (ss_case02$prj_posterior$tac %in% tail(ss_case02_input$data$catch$Total, n = 1))

  boxplot(ss_case02$prj_posterior$biomass[subdata_id],
    add = TRUE,
    at = projection_year[i],
    col = "red",
    width = 1,
    outline = TRUE,
    axes = FALSE
  )
}

# mortality
mortality <- read_ewe_output(
  file_path = here::here("data", "ewe", "7ages", "ecosim_with_environmental_driver", "amo_pcp"),
  file_names = "mortality_monthly.csv",
  skip_nrows = 8,
  plot = FALSE,
  figure_titles = NULL,
  functional_groups = functional_groups,
  figure_colors = NULL
)
mortality_ewe <- apply(mortality[[1]][, age_name], 1, max)

mortality <- read.csv(file = here::here("data", "ewe", "7ages", "updated_faa.csv"))
#mortality_ewe <- apply(mortality[, 2:ncol(mortality)], 1, max)
mortality_ewe <- apply(mortality[, 2:ncol(mortality)], 1, mean)

par(mfrow = c(1, 1), mar = c(4, 4, 1, 4))
plot(c(model_year, projection_year),
  #mortality_ewe[time_id],
  mortality_ewe,
  xlab = "Year", ylab = "EwE Apical F",
  pch = 16
)
lines(model_year, ss_case01$timeseries[, "mu", "F"])
lines(model_year, ss_case02$timeseries[, "mu", "F"], lty = 2, col = 2)
par(new = TRUE)
ylim <- range(ss_case01$timeseries[, "mu", "F"], ss_case02$timeseries[, "mu", "F"])
plot(model_year, ss_case01$timeseries[, "mu", "F"],
  type = "l", axes = FALSE, lty = 1,
  bty = "n", xlab = "", ylab = ""
)
lines(model_year, ss_case02$timeseries[, "mu", "F"], lty = 2, col = 2)
axis(side = 4, at = pretty(ylim))
mtext("JABBA F", side = 4, line = 2)
legend("topright",
  c("EWE", "JABBA case 0.1", "JABBA case 0.2"),
  bty = "n",
  pch = c(16, NA, NA),
  lty = c(NA, 1, 2),
  col = c(1, 1, 2)
)

# Projection: cases 1 - 4 ---------------------------

lm_slope <- data.frame(
  case = "True indices",
  amo = NA,
  pcp = NA,
  bassB = NA,
  dollars = NA
)

year_id <- seq(1, nrow(amo_unsmooth_lag1), by = 12)
index_year <- c(model_year, projection_year)

amo <- amo_unsmooth_lag1[year_id, ]
amo_lm <- lm(biomass_ewe[time_id] ~ amo$raw_value)
amo_fit <- fitted(amo_lm)
lm_slope$amo <- paste0(
  round(summary(amo_lm)$coefficients[2, 1], digits = 2),
  if(summary(amo_lm)$coefficients[2, 4] <= 0.05) {"*"})

pcp <- precipitation[year_id, ]
pcp_lm <- lm(biomass_ewe[time_id] ~ pcp$raw_value)
pcp_fit <- fitted(pcp_lm)
lm_slope$pcp <- paste0(
  round(summary(pcp_lm)$coefficients[2, 1], digits = 2),
  if(summary(pcp_lm)$coefficients[2, 4] <= 0.05) {"*"})

bassB <- bass_bio[bass_bio$Year %in% index_year, ]
bassB_lm <- lm(biomass_ewe[time_id] ~ bassB$bass_bio)
bassB_fit <- fitted(bassB_lm)
lm_slope$bassB <- paste0(
  round(summary(bassB_lm)$coefficients[2, 1], digits = 2),
  if(summary(bassB_lm)$coefficients[2, 4] <= 0.05) {"*"})

sub_menhadenD <- menhaden_dollars$Dollars[menhaden_dollars$Year %in% index_year]
dollars_lm <- lm(biomass_ewe[time_id] ~ sub_menhadenD)
dollars_fit <- fitted(dollars_lm)
lm_slope$dollars <- paste0(
  round(summary(dollars_lm)$coefficients[2, 1], digits = 2),
  if(summary(dollars_lm)$coefficients[2, 4] <= 0.05) {"*"})

par(mfrow = c(2, 2))

plot(amo$raw_value, biomass_ewe[time_id],
     xlab = "AMO raw values",
     ylab = "Biomass of menhaden-like species from OM"
)
lines(amo$raw_value, amo_fit, lty = 2, col = "blue")

plot(pcp$raw_value, biomass_ewe[time_id],
     xlab = "Precipitation raw values",
     ylab = "Biomass of menhaden-like species from OM"
)
lines(pcp$raw_value, pcp_fit, lty = 2, col = "blue")

plot(bassB$bass_bio, biomass_ewe[time_id],
     xlab = "Biomass of Striped bass",
     ylab = "Biomass of menhaden-like species from OM"
)
lines(bassB$bass_bio, bassB_fit, lty = 2, col = "blue")

plot(sub_menhadenD, biomass_ewe[time_id],
     xlab = "Menhaden dollars",
     ylab = "Biomass of menhaden-like species from OM"
)
lines(sub_menhadenD, dollars_fit, lty = 2, col = "blue")

knitr::kable(lm_slope)

lm_slope <- data.frame(
  case = 0.2,
  projection_year = 1:length(projection_year),
  amo = NA,
  pcp = NA,
  bassB = NA,
  dollars = NA
)

for (projection_year_id in 1:length(projection_year)){

  if (projection_year_id ==1) {
    menhaden_b <- ss_case02$timeseries[, "mu", "B"]
  } else {
    menhaden_b <- c(ss_case02$timeseries[, "mu", "B"], apply(as.matrix(ss_case02$posteriors$prBtoBmsy[, 1:(projection_year_id-1), 1]) * ss_case02$posteriors$SBmsy[,1], 2, median))
  }


  year_id <- seq(1, nrow(amo_unsmooth_lag1), by = 12)[1:(length(model_year)+projection_year_id-1)]

  if (projection_year_id == 1) {
    index_year = model_year
  } else {
    index_year <- c(model_year, projection_year[1:(projection_year_id-1)])
  }


  # Linear regression model -----------------------------------------

  amo <- amo_unsmooth_lag1[year_id, ]
  amo_lm <- lm(menhaden_b ~ amo$raw_value)
  summary(amo_lm)
  amo_fit <- fitted(amo_lm)
  lm_slope$amo[projection_year_id] <- paste0(
    round(summary(amo_lm)$coefficients[2, 1], digits = 2),
    if(summary(amo_lm)$coefficients[2, 4] <= 0.05) {"*"})

  pcp <- precipitation[year_id, ]
  pcp_lm <- lm(menhaden_b ~ pcp$raw_value)
  summary(pcp_lm)
  pcp_fit <- fitted(pcp_lm)
  lm_slope$pcp[projection_year_id] <- paste0(
    round(summary(pcp_lm)$coefficients[2, 1], digits = 2),
    if(summary(pcp_lm)$coefficients[2, 4] <= 0.05) {"*"})

  bassB <- bass_bio[bass_bio$Year %in% index_year, ]
  bassB_lm <- lm(menhaden_b ~ bassB$bass_bio)
  summary(bassB_lm)
  bassB_fit <- fitted(bassB_lm)
  lm_slope$bassB[projection_year_id] <- paste0(
    round(summary(bassB_lm)$coefficients[2, 1], digits = 2),
    if(summary(bassB_lm)$coefficients[2, 4] <= 0.05) {"*"})

  sub_menhaden_b <- menhaden_b[index_year %in% menhaden_dollars$Year]
  sub_menhadenD <- menhaden_dollars$Dollars[menhaden_dollars$Year %in% index_year]
  dollars_lm <- lm(sub_menhaden_b ~ sub_menhadenD)
  summary(dollars_lm)
  dollars_fit <- fitted(dollars_lm)
  lm_slope$dollars[projection_year_id] <- paste0(
    round(summary(dollars_lm)$coefficients[2, 1], digits = 2),
    if(summary(dollars_lm)$coefficients[2, 4] <= 0.05) {"*"})

  if (projection_year_id == length(projection_year)){

    par(mfrow = c(2, 2))

    plot(amo$raw_value, menhaden_b,
         xlab = "AMO raw values",
         ylab = "Biomass of menhaden-like species"
    )
    lines(amo$raw_value, amo_fit, lty = 2, col = "blue")

    plot(pcp$raw_value, menhaden_b,
         xlab = "Precipitation raw values",
         ylab = "Biomass of menhaden-like species"
    )
    lines(pcp$raw_value, pcp_fit, lty = 2, col = "blue")

    plot(bassB$bass_bio, menhaden_b,
         xlab = "Biomass of Striped bass",
         ylab = "Biomass of menhaden-like species"
    )
    lines(bassB$bass_bio, bassB_fit, lty = 2, col = "blue")

    plot(sub_menhadenD, sub_menhaden_b,
         xlab = "Menhaden dollars",
         ylab = "Biomass of menhaden-like species"
    )
    lines(sub_menhadenD, dollars_fit, lty = 2, col = "blue")

  }


  # status of indicators --------------------------------------------

  amo_soi <- calc_soi(
    indicator_data = amo$raw_value,
    slope = coef(amo_lm)[2]
  )

  pcp_soi <- calc_soi(
    indicator_data = pcp$raw_value,
    slope = coef(pcp_lm)[2]
  )

  bassB_soi <- calc_soi(
    indicator_data = bassB$bass_bio,
    slope = coef(bassB_lm)[2]
  )

  dollars_soi <- calc_soi(
    indicator_data = sub_menhadenD,
    slope = coef(dollars_lm)[2]
  )

  if (projection_year_id == 1) {
    scaled_data <- data.frame(
      year = model_year,
      projection_year_id = projection_year_id,
      amo = scale(amo$raw_value)[,1],
      pcp = scale(pcp$raw_value)[,1],
      bassB = scale(bassB$bass_bio)[,1],
      dollars = scale(sub_menhadenD)[,1],
      menhadenB = scale(menhaden_b)[,1]
    )

    soi_data <- data.frame(
      year = model_year,
      projection_year_id = projection_year_id,
      amo = amo_soi,
      pcp = pcp_soi,
      bass_b = bassB_soi,
      dollars = dollars_soi
    )
  } else{
    scaled_data <- rbind(
      scaled_data,
      data.frame(
        year = index_year,
        projection_year_id = projection_year_id,
        amo = scale(amo$raw_value)[,1],
        pcp = scale(pcp$raw_value)[,1],
        bassB = scale(bassB$bass_bio)[,1],
        dollars = scale(sub_menhadenD)[,1],
        menhadenB = scale(menhaden_b)[,1]
      )
    )

    soi_data <- rbind(
      soi_data,
      data.frame(
        year = index_year,
        projection_year_id = projection_year_id,
        amo = amo_soi,
        pcp = pcp_soi,
        bass_b = bassB_soi,
        dollars = dollars_soi
      )
    )
  }



  # Adjusted FMSY ----------------------------------------------------

  if (projection_year_id == 1) {
    Bt_BMSY <- ss_case02$posteriors$BtoBmsy[, length(model_year)]
  } else {
    Bt_BMSY <- ss_case02$posteriors$prBtoBmsy[, (projection_year_id-1), 1]
  }

  amo_fmsy <- adjust_projection_jabba(
    FMSY = ss_case02$refpts_posterior$Fmsy,
    soi = tail(amo_soi, n = 1),
    Bt_BMSY = Bt_BMSY
  )
  pcp_fmsy <- adjust_projection_jabba(
    FMSY = ss_case02$refpts_posterior$Fmsy,
    soi = tail(pcp_soi, n = 1),
    Bt_BMSY = Bt_BMSY
  )
  bassB_fmsy <- adjust_projection_jabba(
    FMSY = ss_case02$refpts_posterior$Fmsy,
    soi = tail(bassB_soi, n = 1),
    Bt_BMSY = Bt_BMSY
  )
  dollars_fmsy <- adjust_projection_jabba(
    FMSY = ss_case02$refpts_posterior$Fmsy,
    soi = tail(dollars_soi, n = 1),
    Bt_BMSY = Bt_BMSY
  )

  if (projection_year_id == 1){
    fmsy_data <- data.frame(
      iter = 1:length(amo_fmsy),
      projection_year_id = projection_year_id,
      JABBA = ss_case02$refpts_posterior$Fmsy,
      amo = amo_fmsy,
      pcp = pcp_fmsy,
      bassB = bassB_fmsy,
      dollars = dollars_fmsy
    )
  } else {
    fmsy_data <- rbind(
      fmsy_data,
      data.frame(
        iter = 1:length(amo_fmsy),
        projection_year_id = projection_year_id,
        JABBA = ss_case02$refpts_posterior$Fmsy,
        amo = amo_fmsy,
        pcp = pcp_fmsy,
        bassB = bassB_fmsy,
        dollars = dollars_fmsy
      )
    )
  }

}



scaled_data_melt <- reshape2::melt(
  scaled_data,
  id = c("year", "projection_year_id")
)
scaled_data_melt$projection_year_id <- as.factor(scaled_data_melt$projection_year_id)


ggplot(scaled_data_melt, aes(x = year, y = value, color = projection_year_id)) +
  geom_line() +
  facet_wrap(~variable, scales = "free_y") +
  labs(
    title = "Scaled Indices",
    x = "Year",
    y = "Scaled Indices"
  ) +
  theme_bw()


soi_data_melt <- reshape2::melt(
  soi_data,
  id = c("year", "projection_year_id")
)
soi_data_melt$projection_year_id <- as.factor(soi_data_melt$projection_year_id)

ggplot(soi_data_melt, aes(x = year, y = value, color = projection_year_id)) +
  geom_line() +
  facet_wrap(~variable, scales = "free_y") +
  labs(
    title = "Status of Indicators",
    x = "Year",
    y = "Status of Indicators"
  ) +
  theme_bw()

fmsy_data_melt <- reshape2::melt(
  fmsy_data,
  id = c("iter", "projection_year_id")
)
fmsy_data_melt$projection_year_id <- as.factor(fmsy_data_melt$projection_year_id)

ggplot(fmsy_data_melt, aes(x = iter, y = value, color = projection_year_id)) +
  geom_line() +
  facet_wrap(~variable) +
  labs(
    title = "FMSY",
    x = "Iteration",
    y = "FMSY"
  ) +
  theme_bw()

ggplot(fmsy_data_melt, aes(x=variable, y = value, color = projection_year_id)) +
  geom_boxplot()+
  labs(
    title = "FMSY",
    x = "",
    y = "FMSY"
  ) +
  theme_bw()

knitr::kable(lm_slope)
