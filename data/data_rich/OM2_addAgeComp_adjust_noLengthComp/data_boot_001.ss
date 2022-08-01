#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Mon Aug 01 12:27:04 2022
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1659371224 first rand#: 0.0425667
#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
1985 #_StartYr
2012 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1.00001 #_spawn_month
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
#_catch_biomass(mtons):_columns_are_fisheries,year,season
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 11.418 0.05
1985 1 1 201365 0.05
1986 1 1 169563 0.05
1987 1 1 90860.6 0.05
1988 1 1 27614 0.05
1989 1 1 56980.6 0.05
1990 1 1 65032.2 0.05
1991 1 1 81940.7 0.05
1992 1 1 134528 0.05
1993 1 1 202007 0.05
1994 1 1 89039.5 0.05
1995 1 1 51328.6 0.05
1996 1 1 111527 0.05
1997 1 1 95429 0.05
1998 1 1 189510 0.05
1999 1 1 147924 0.05
2000 1 1 230032 0.05
2001 1 1 225821 0.05
2002 1 1 218695 0.05
2003 1 1 325737 0.05
2004 1 1 546188 0.05
2005 1 1 742443 0.05
2006 1 1 1.47398e+06 0.05
2007 1 1 869648 0.05
2008 1 1 453096 0.05
2009 1 1 497214 0.05
2010 1 1 489981 0.05
2011 1 1 399007 0.05
2012 1 1 669885 0.05
-9999 0 0 0 0
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
1990 10 2 2.93036e+06 0.1 #_orig_obs: 677965 survey1
1991 10 2 2.97857e+06 0.1 #_orig_obs: 3.25479e+06 survey1
1992 10 2 1.4464e+06 0.1 #_orig_obs: 6.60786e+06 survey1
1993 10 2 1.47512e+06 0.1 #_orig_obs: 1.70994e+06 survey1
1994 10 2 1.55955e+06 0.1 #_orig_obs: 1.00865e+06 survey1
1995 10 2 1.22595e+06 0.1 #_orig_obs: 1.85517e+06 survey1
1996 10 2 2.45834e+06 0.1 #_orig_obs: 1.83768e+06 survey1
1997 10 2 5.08935e+06 0.1 #_orig_obs: 1.42472e+06 survey1
1998 10 2 4.75338e+06 0.1 #_orig_obs: 1.42479e+07 survey1
1999 10 2 2.95301e+06 0.1 #_orig_obs: 6.43402e+06 survey1
2000 10 2 2.23033e+06 0.1 #_orig_obs: 2.39328e+06 survey1
2001 10 2 2.26144e+06 0.1 #_orig_obs: 1.40284e+06 survey1
2002 10 2 1.88273e+06 0.1 #_orig_obs: 1.56085e+06 survey1
2003 10 2 1.8246e+06 0.1 #_orig_obs: 1.26877e+06 survey1
2004 10 2 4.66044e+06 0.1 #_orig_obs: 1.01914e+06 survey1
2005 10 2 4.26319e+06 0.1 #_orig_obs: 5.88313e+06 survey1
2006 10 2 3.3016e+06 0.1 #_orig_obs: 8.04381e+06 survey1
2007 10 2 3.41527e+06 0.1 #_orig_obs: 3.18229e+06 survey1
2008 10 2 2.21647e+06 0.1 #_orig_obs: 3.52945e+06 survey1
2009 10 2 3.14338e+06 0.1 #_orig_obs: 2.39792e+06 survey1
2010 10 2 5.11045e+06 0.1 #_orig_obs: 2.36562e+06 survey1
2011 10 2 4.7413e+06 0.1 #_orig_obs: 9.48175e+06 survey1
2012 10 2 4.72149e+06 0.1 #_orig_obs: 5.71121e+06 survey1
1985 4 3 801371 0.1 #_orig_obs: 1.61884e+06 survey2
1986 4 3 413697 0.1 #_orig_obs: 1.46524e+06 survey2
1987 4 3 384006 0.1 #_orig_obs: 915472 survey2
1988 4 3 219727 0.1 #_orig_obs: 222973 survey2
1989 4 3 411677 0.1 #_orig_obs: 205454 survey2
1990 4 3 1.07662e+06 0.1 #_orig_obs: 156818 survey2
1991 4 3 911236 0.1 #_orig_obs: 342837 survey2
1992 4 3 445107 0.1 #_orig_obs: 2.04686e+06 survey2
1993 4 3 598904 0.1 #_orig_obs: 1.5609e+06 survey2
1994 4 3 561613 0.1 #_orig_obs: 363365 survey2
1995 4 3 423457 0.1 #_orig_obs: 572808 survey2
1996 4 3 885008 0.1 #_orig_obs: 543406 survey2
1997 4 3 1.67643e+06 0.1 #_orig_obs: 331752 survey2
1998 4 3 1.21283e+06 0.1 #_orig_obs: 1.63648e+06 survey2
1999 4 3 1.03954e+06 0.1 #_orig_obs: 4.12363e+06 survey2
2000 4 3 850987 0.1 #_orig_obs: 1.70526e+06 survey2
2001 4 3 937581 0.1 #_orig_obs: 701033 survey2
2002 4 3 429301 0.1 #_orig_obs: 430437 survey2
2003 4 3 764783 0.1 #_orig_obs: 702960 survey2
2004 4 3 1.70152e+06 0.1 #_orig_obs: 254914 survey2
2005 4 3 1.55872e+06 0.1 #_orig_obs: 1.12405e+06 survey2
2006 4 3 1.37559e+06 0.1 #_orig_obs: 4.11092e+06 survey2
2007 4 3 1.34659e+06 0.1 #_orig_obs: 2.01791e+06 survey2
2008 4 3 814046 0.1 #_orig_obs: 1.30826e+06 survey2
2009 4 3 1.21709e+06 0.1 #_orig_obs: 1.66939e+06 survey2
2010 4 3 1.42584e+06 0.1 #_orig_obs: 469887 survey2
2011 4 3 1.92943e+06 0.1 #_orig_obs: 1.63082e+06 survey2
2012 4 3 2.02095e+06 0.1 #_orig_obs: 2.72819e+06 survey2
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
1985  1 1  0 0 1 -1 -1 852  154 430 194 67 6 1 0
1986  1 1  0 0 1 -1 -1 583  42 338 150 38 15 0 0
1987  1 1  0 0 1 -1 -1 762  68 215 355 110 13 1 0
1988  1 1  0 0 1 -1 -1 737  104 344 129 136 21 3 0
1989  1 1  0 0 1 -1 -1 692  205 265 157 37 28 0 0
1990  1 1  0 0 1 -1 -1 684  302 299 56 24 3 0 0
1991  1 1  0 0 1 -1 -1 777  129 556 69 18 4 1 0
1992  1 1  0 0 1 -1 -1 568  29 317 194 28 0 0 0
1993  1 1  0 0 1 -1 -1 548  96 163 189 96 4 0 0
1994  1 1  0 0 1 -1 -1 526  94 293 74 51 14 0 0
1995  1 1  0 0 1 -1 -1 500  62 277 119 31 11 0 0
1996  1 1  0 0 1 -1 -1 463  176 158 93 31 4 1 0
1997  1 1  0 0 1 -1 -1 454  173 238 26 15 2 0 0
1998  1 1  0 0 1 -1 -1 459  55 324 73 4 3 0 0
1999  1 1  0 0 1 -1 -1 428  39 202 157 28 2 0 0
2000  1 1  0 0 1 -1 -1 366  55 163 87 55 6 0 0
2001  1 1  0 0 1 -1 -1 501  95 246 88 55 17 0 0
2002  1 1  0 0 1 -1 -1 439  32 274 97 28 8 0 0
2003  1 1  0 0 1 -1 -1 402  90 136 134 35 6 1 0
2004  1 1  0 0 1 -1 -1 459  196 190 37 33 3 0 0
2005  1 1  0 0 1 -1 -1 394  79 277 32 6 0 0 0
2006  1 1  0 0 1 -1 -1 421  64 212 134 11 0 0 0
2007  1 1  0 0 1 -1 -1 532  111 254 113 51 3 0 0
2008  1 1  0 0 1 -1 -1 445  29 271 100 39 6 0 0
2009  1 1  0 0 1 -1 -1 402  105 103 156 27 10 1 0
2010  1 1  0 0 1 -1 -1 442  120 255 28 34 5 0 0
2011  1 1  0 0 1 -1 -1 434  89 256 79 6 4 0 0
2012  1 1  0 0 1 -1 -1 370  67 186 94 23 0 0 0
1990  10 2  0 0 1 -1 -1 118  104 10 3 1 0 0 0
1991  10 2  0 0 1 -1 -1 40  26 13 1 0 0 0 0
1992  10 2  0 0 1 -1 -1 122  49 62 9 2 0 0 0
1993  10 2  0 0 1 -1 -1 119  81 17 15 6 0 0 0
1994  10 2  0 0 1 -1 -1 53  32 21 0 0 0 0 0
1995  10 2  0 0 1 -1 -1 261  150 82 23 3 3 0 0
1996  10 2  0 0 1 -1 -1 192  163 23 4 2 0 0 0
1997  10 2  0 0 1 -1 -1 110  91 17 0 2 0 0 0
1998  10 2  0 0 1 -1 -1 176  111 53 12 0 0 0 0
1999  10 2  0 0 1 -1 -1 495  297 120 62 16 0 0 0
2000  10 2  0 0 1 -1 -1 464  298 102 31 29 4 0 0
2001  10 2  0 0 1 -1 -1 268  195 51 13 4 3 2 0
2002  10 2  0 0 1 -1 -1 602  276 255 46 12 8 4 1
2003  10 2  0 0 1 -1 -1 56  43 4 9 0 0 0 0
2004  10 2  0 0 1 -1 -1 294  259 31 4 0 0 0 0
2005  10 2  0 0 1 -1 -1 740  531 194 13 0 0 1 1
2006  10 2  0 0 1 -1 -1 335  231 67 33 4 0 0 0
2007  10 2  0 0 1 -1 -1 553  400 116 37 0 0 0 0
2008  10 2  0 0 1 -1 -1 344  166 137 23 16 2 0 0
2009  10 2  0 0 1 -1 -1 149  118 20 11 0 0 0 0
2010  10 2  0 0 1 -1 -1 172  138 31 3 0 0 0 0
2011  10 2  0 0 1 -1 -1 889  595 239 50 5 0 0 0
2012  10 2  0 0 1 -1 -1 464  332 94 32 5 0 1 0
1985  4 3  0 0 1 -1 -1 1000  762 164 50 18 6 0 0
1986  4 3  0 0 1 -1 -1 1000  499 368 91 21 9 4 8
1987  4 3  0 0 1 -1 -1 1000  665 141 133 37 19 4 1
1988  4 3  0 0 1 -1 -1 1000  677 204 42 61 8 6 2
1989  4 3  0 0 1 -1 -1 1000  868 76 35 8 10 1 2
1990  4 3  0 0 1 -1 -1 1000  920 66 8 3 1 1 1
1991  4 3  0 0 1 -1 -1 1000  758 213 23 3 3 0 0
1992  4 3  0 0 1 -1 -1 1000  519 312 145 18 2 1 3
1993  4 3  0 0 1 -1 -1 1000  802 84 79 30 5 0 0
1994  4 3  0 0 1 -1 -1 1000  736 200 31 23 10 0 0
1995  4 3  0 0 1 -1 -1 1000  677 234 69 8 7 5 0
1996  4 3  0 0 1 -1 -1 1000  908 51 28 9 3 1 0
1997  4 3  0 0 1 -1 -1 1000  879 110 7 3 1 0 0
1998  4 3  0 0 1 -1 -1 1000  663 292 42 3 0 0 0
1999  4 3  0 0 1 -1 -1 1000  646 222 116 16 0 0 0
2000  4 3  0 0 1 -1 -1 1000  728 166 53 46 5 1 1
2001  4 3  0 0 1 -1 -1 1000  828 111 40 12 7 2 0
2002  4 3  0 0 1 -1 -1 1000  572 315 73 23 10 7 0
2003  4 3  0 0 1 -1 -1 1000  848 67 66 13 3 2 1
2004  4 3  0 0 1 -1 -1 1000  929 54 4 13 0 0 0
2005  4 3  0 0 1 -1 -1 1000  750 230 20 0 0 0 0
2006  4 3  0 0 1 -1 -1 1000  725 199 69 7 0 0 0
2007  4 3  0 0 1 -1 -1 1000  819 112 47 22 0 0 0
2008  4 3  0 0 1 -1 -1 1000  573 335 60 18 14 0 0
2009  4 3  0 0 1 -1 -1 1000  873 70 44 8 3 2 0
2010  4 3  0 0 1 -1 -1 1000  859 112 18 7 3 0 1
2011  4 3  0 0 1 -1 -1 1000  784 185 26 5 0 0 0
2012  4 3  0 0 1 -1 -1 1000  767 159 61 13 0 0 0
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

