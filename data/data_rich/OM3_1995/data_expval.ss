#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue Dec 06 13:13:27 2022
#_expected_values
#C data file for simple example
#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
1985 #_StartYr
1995 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1.0001 #_spawn_month
-1 #_Ngenders: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
7 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
3 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 1 0 fleet1  # 1
 3 1 1 2 0 survey1  # 2
 3 1 1 2 0 survey2  # 3
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 79083.7 0.05
1985 1 1 13603.9 0.05
1986 1 1 12608.1 0.05
1987 1 1 6965.11 0.05
1988 1 1 1875.42 0.05
1989 1 1 3547.84 0.05
1990 1 1 75299.6 0.05
1991 1 1 117945 0.05
1992 1 1 268179 0.05
1993 1 1 458769 0.05
1994 1 1 229070 0.05
1995 1 1 149976 0.05
-9999 0 0 0 0
#
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # fleet1
2 0 0 0 # survey1
3 0 0 0 # survey2
#_year month index obs err
1990 10 2 598149 0.1 #_orig_obs: 559970 survey1
1991 10 2 2.39935e+06 0.1 #_orig_obs: 4.1271e+06 survey1
1992 10 2 6.84874e+06 0.1 #_orig_obs: 7.13121e+06 survey1
1993 10 2 2.30048e+06 0.1 #_orig_obs: 1.66483e+06 survey1
1994 10 2 798437 0.1 #_orig_obs: 613678 survey1
1995 10 2 1.34109e+06 0.1 #_orig_obs: 1.43796e+06 survey1
1985 4 3 996047 0.1 #_orig_obs: 1.90597e+06 survey2
1986 4 3 1.02151e+06 0.1 #_orig_obs: 2.21911e+06 survey2
1987 4 3 940727 0.1 #_orig_obs: 1.05381e+06 survey2
1988 4 3 329469 0.1 #_orig_obs: 192092 survey2
1989 4 3 208021 0.1 #_orig_obs: 179548 survey2
1990 4 3 180146 0.1 #_orig_obs: 129115 survey2
1991 4 3 713875 0.1 #_orig_obs: 328697 survey2
1992 4 3 1.93488e+06 0.1 #_orig_obs: 2.00105e+06 survey2
1993 4 3 837857 0.1 #_orig_obs: 1.03349e+06 survey2
1994 4 3 296030 0.1 #_orig_obs: 250591 survey2
1995 4 3 430806 0.1 #_orig_obs: 515878 survey2
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
1 # binwidth for population size comp 
1 # minimum size in the population (lower edge of first bin and size at age 0.00) 
60 # maximum size in the population (lower edge of last bin) 
0 # use length composition data (0/1)
# see manual for format of length composition data 
#
7 #_N_age_bins
 1 2 3 4 5 6 7
1 #_N_ageerror_definitions
 -1 -1 -1 -1 -1 -1 -1 -1
 0 0 0 0 0 0 0 0
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_ParmSelect:  parm number for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0 1e-07 1 0 0 0 0.001 #_fleet:1_fleet1
0 1e-07 1 0 0 0 0.001 #_fleet:2_survey1
0 1e-07 1 0 0 0 0.001 #_fleet:3_survey2
1 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
1985  1 1  0 0 1 -1 -1 800  109.955 270.691 343.2 64.7849 9.40401 1.96479 0
1986  1 1  0 0 1 -1 -1 800  27.0131 297.934 384.66 77.3853 10.8193 1.65778 0.530637
1987  1 1  0 0 1 -1 -1 800  35.3133 93.3358 540.904 110.777 16.4866 3.18259 0
1988  1 1  0 0 1 -1 -1 800  45.0695 193.273 268.973 247.655 37.4437 5.87091 1.715
1989  1 1  0 0 1 -1 -1 800  266.233 128.303 288.718 64.1011 43.6003 6.94355 2.10084
1990  1 1  0 0 1 -1 -1 800  443.441 265.18 60.7705 22.8857 3.93946 2.8784 0.905614
1991  1 1  0 0 1 -1 -1 800  84.7324 549.936 157.852 5.11208 2.36836 0 0
1992  1 1  0 0 1 -1 -1 800  26.6208 180.646 566.669 24.9577 1.1072 0 0
1993  1 1  0 0 1 -1 -1 800  105.805 130.894 367.766 187.851 7.14455 0.21001 0.329073
1994  1 1  0 0 1 -1 -1 800  145.142 377.26 178.229 64.2838 33.174 1.91087 0
1995  1 1  0 0 1 -1 -1 800  84.4215 329.073 354.396 19.9822 7.08871 5.03912 0
1990  10 2  0 0 1 -1 -1 800  56.1678 246.98 396.057 99.713 1.08201 0 0
1991  10 2  0 0 1 -1 -1 800  5.23376 252.856 530.525 11.3853 0 0 0
1992  10 2  0 0 1 -1 -1 800  0 33.5314 744.932 21.5366 0 0 0
1993  10 2  0 0 1 -1 -1 800  3.61417 31.8856 558.8 205.203 0.496557 0 0
1994  10 2  0 0 1 -1 -1 800  9.14411 168.809 489.561 128.242 4.24336 0 0
1995  10 2  0 0 1 -1 -1 800  0 96.4989 676.794 26.7067 0 0 0
1985  4 3  0 0 1 -1 -1 800  0.0119376 89.0021 617.822 93.1642 0 0 0
1986  4 3  0 0 1 -1 -1 800  0.00266518 86.9286 614.366 98.703 0 0 0
1987  4 3  0 0 1 -1 -1 800  0 21.1155 669.304 109.581 0 0 0
1988  4 3  0 0 1 -1 -1 800  0.0043869 56.2922 428.296 311.729 3.6787 0 0
1989  4 3  0 0 1 -1 -1 800  0.0349838 51.287 631.976 110.822 5.87981 0 0
1990  4 3  0 0 1 -1 -1 800  0.161741 297.571 387.561 114.706 0 0 0
1991  4 3  0 0 1 -1 -1 800  0.0153045 302.668 484.739 12.5777 0 0 0
1992  4 3  0 0 1 -1 -1 800  0.00208163 41.6627 733.09 25.2448 0 0 0
1993  4 3  0 0 1 -1 -1 800  0.0087143 33.2601 551.279 215.452 0 0 0
1994  4 3  0 0 1 -1 -1 800  0.0215503 174.024 486.997 133.807 5.15001 0 0
1995  4 3  0 0 1 -1 -1 800  0.00895648 106.921 663.449 28.8245 0.795772 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
0 # N sizefreq methods to read 
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
# Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
# feature not yet implemented
#
999
