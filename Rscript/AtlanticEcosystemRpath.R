# remotes::install_github("NOAA-EDAB/Rpath")
library(here)
library(Rpath)
library(data.table)


# Set up working directory ------------------------------------------------

ecopath_input_path <- here::here("data", "EwE", "ecopath_input")

# Run Ecopath using Rpath -------------------------------------------------

# Setting up Ecopath
# Parameter file generation
# Groups and types for the R Ecosystem

ecopath_basic_input <- read.csv(file.path(ecopath_input_path, "rpath_input.csv"))

# Set up multi-stanza groups if there are any
ecopath_basic_input$Group
stgroups <- c(
  rep("StripedBass", 3), rep("Menhaden", 2), NA,
  rep("Bluefish", 2), rep("Weakfish", 2), rep("AtlanticHerring", 2),
  rep(NA, 12)
)

# Create Rpath parameters
REco.params <- Rpath::create.rpath.params(group = ecopath_basic_input$Group, type = ecopath_basic_input$Type, stgroup = stgroups)
# REco.params <- Rpath::create.rpath.params(group = ecopath_basic_input$Group, type = ecopath_basic_input$Type, stgroup = NA)
REco.params$stanzas

# Group parameters
REco.params$stanzas$stgroups[, VBGF_Ksp := c(0.183, 0.331, 0.262, 0.297, 0.320)] # von Bertalanffy growth function specialized K
REco.params$stanzas$stgroups[, BAB := c(0.113, 0.114, -0.0639, 0.0, 0.137)] # Relative biomass accumulation rate (BA/B)
REco.params$stanzas$stgroups[, Wmat := c(0.205, 0.237, 0.09, 0.013, 0.038)] # weight at 50% maturity devided by weight infinity (relative weight at maturity)

# Individual stanza parameters
REco.params$stanzas$stindiv[, First := c(0, 24, 72, 0, 12, 0, 12, 0, 12, 0, 12)]
REco.params$stanzas$stindiv[, Last := c(23, 71, 225, 11, 120, 11, 150, 11, 140, 11, 130)]
REco.params$stanzas$stindiv[, Z := c(1.132, 0.582, 0.335, 1.764, 1.454, 2.069, 0.656, 1.453, 1.31, 1.371, 0.823)]
REco.params$stanzas$stindiv[, Leading := c(F, F, T, F, T, F, T, F, T, F, T)]

REco.params <- Rpath::rpath.stanzas(REco.params)

par(mfrow = c(1, 1))
for (i in 1:REco.params$stanzas$NStanzaGroups) {
  Rpath::stanzaplot(REco.params, StanzaGroup = i)
} # NagesS is NA???

# Add data to REco.params$model
if (all(dim(REco.params$model) == dim(ecopath_basic_input))) REco.params$model <- data.table::as.data.table(ecopath_basic_input)


# Set up diet data
ecopath_diet_input <- read.csv(file.path(ecopath_input_path, "rpath_diet.csv"))

dim(REco.params$diet)
dim(ecopath_diet_input)
REco.params$diet[, 2:(ncol(REco.params$diet) - 1)] <- ecopath_diet_input[, 2:ncol(ecopath_diet_input)]

# Run Ecopath
REco <- Rpath::rpath(REco.params, eco.name = "Northwest Atlantic Ecosystem")

print(REco, morts = T)
summary(REco)
Rpath::webplot(REco, labels = T) # What about detritus - zooplankton?
Rpath::webplot(REco, fleets = T, highlight = "MenhadenJuv")
Rpath::webplot(REco, fleets = T, highlight = "MenhadenAdult")


# Rsim --------------------------------------------------------------------

REco.sim <- rsim.scenario(REco, REco.params, years = 1985:2017)

forcedFrate <- read.csv(file.path(ecopath_input_path, "rsim_frate.csv"))
names(forcedFrate)

colnames(REco.sim$fishing$ForcedFRate)
REco.sim$fishing$ForcedFRate[, 2:(ncol(REco.sim$fishing$ForcedFRate) - 1)] <- as.matrix(forcedFrate[, 2:ncol(forcedFrate)])

REco.run1 <- rsim.run(REco.sim, method = "RK4", years = 1985:2017)
rsim.plot(REco.run1, ecopath_basic_input$Group[1:18])
