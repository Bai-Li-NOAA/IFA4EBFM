#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Mon Aug 01 12:27:04 2022
#_expected_values
#C data file for simple example
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
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 11.6785 0.05
1985 1 1 194804 0.05
1986 1 1 173166 0.05
1987 1 1 92711.3 0.05
1988 1 1 25297.1 0.05
1989 1 1 52045.2 0.05
1990 1 1 65260.2 0.05
1991 1 1 76070.9 0.05
1992 1 1 133199 0.05
1993 1 1 203614 0.05
1994 1 1 92471.1 0.05
1995 1 1 49317 0.05
1996 1 1 121714 0.05
1997 1 1 101885 0.05
1998 1 1 191020 0.05
1999 1 1 156212 0.05
2000 1 1 234442 0.05
2001 1 1 219618 0.05
2002 1 1 213895 0.05
2003 1 1 332006 0.05
2004 1 1 583392 0.05
2005 1 1 796844 0.05
2006 1 1 1.52392e+06 0.05
2007 1 1 843567 0.05
2008 1 1 441591 0.05
2009 1 1 517513 0.05
2010 1 1 470576 0.05
2011 1 1 428285 0.05
2012 1 1 684817 0.05
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
1990 10 2 2.94184e+06 0.1 #_orig_obs: 677965 survey1
1991 10 2 2.70684e+06 0.1 #_orig_obs: 3.25479e+06 survey1
1992 10 2 1.47832e+06 0.1 #_orig_obs: 6.60786e+06 survey1
1993 10 2 1.6503e+06 0.1 #_orig_obs: 1.70994e+06 survey1
1994 10 2 1.5701e+06 0.1 #_orig_obs: 1.00865e+06 survey1
1995 10 2 1.15606e+06 0.1 #_orig_obs: 1.85517e+06 survey1
1996 10 2 2.54145e+06 0.1 #_orig_obs: 1.83768e+06 survey1
1997 10 2 5.03265e+06 0.1 #_orig_obs: 1.42472e+06 survey1
1998 10 2 3.74912e+06 0.1 #_orig_obs: 1.42479e+07 survey1
1999 10 2 2.64367e+06 0.1 #_orig_obs: 6.43402e+06 survey1
2000 10 2 2.20034e+06 0.1 #_orig_obs: 2.39328e+06 survey1
2001 10 2 2.46619e+06 0.1 #_orig_obs: 1.40284e+06 survey1
2002 10 2 1.40226e+06 0.1 #_orig_obs: 1.56085e+06 survey1
2003 10 2 1.82478e+06 0.1 #_orig_obs: 1.26877e+06 survey1
2004 10 2 4.7349e+06 0.1 #_orig_obs: 1.01914e+06 survey1
2005 10 2 4.4064e+06 0.1 #_orig_obs: 5.88313e+06 survey1
2006 10 2 3.40481e+06 0.1 #_orig_obs: 8.04381e+06 survey1
2007 10 2 3.69047e+06 0.1 #_orig_obs: 3.18229e+06 survey1
2008 10 2 2.12511e+06 0.1 #_orig_obs: 3.52945e+06 survey1
2009 10 2 3.35609e+06 0.1 #_orig_obs: 2.39792e+06 survey1
2010 10 2 4.83084e+06 0.1 #_orig_obs: 2.36562e+06 survey1
2011 10 2 4.83305e+06 0.1 #_orig_obs: 9.48175e+06 survey1
2012 10 2 4.81789e+06 0.1 #_orig_obs: 5.71121e+06 survey1
1985 4 3 930730 0.1 #_orig_obs: 1.61884e+06 survey2
1986 4 3 411218 0.1 #_orig_obs: 1.46524e+06 survey2
1987 4 3 308206 0.1 #_orig_obs: 915472 survey2
1988 4 3 238440 0.1 #_orig_obs: 222973 survey2
1989 4 3 412608 0.1 #_orig_obs: 205454 survey2
1990 4 3 1.15558e+06 0.1 #_orig_obs: 156818 survey2
1991 4 3 980027 0.1 #_orig_obs: 342837 survey2
1992 4 3 495447 0.1 #_orig_obs: 2.04686e+06 survey2
1993 4 3 620326 0.1 #_orig_obs: 1.5609e+06 survey2
1994 4 3 575517 0.1 #_orig_obs: 363365 survey2
1995 4 3 408851 0.1 #_orig_obs: 572808 survey2
1996 4 3 992735 0.1 #_orig_obs: 543406 survey2
1997 4 3 1.94504e+06 0.1 #_orig_obs: 331752 survey2
1998 4 3 1.32181e+06 0.1 #_orig_obs: 1.63648e+06 survey2
1999 4 3 929156 0.1 #_orig_obs: 4.12363e+06 survey2
2000 4 3 798001 0.1 #_orig_obs: 1.70526e+06 survey2
2001 4 3 924243 0.1 #_orig_obs: 701033 survey2
2002 4 3 479354 0.1 #_orig_obs: 430437 survey2
2003 4 3 700518 0.1 #_orig_obs: 702960 survey2
2004 4 3 1.88197e+06 0.1 #_orig_obs: 254914 survey2
2005 4 3 1.63479e+06 0.1 #_orig_obs: 1.12405e+06 survey2
2006 4 3 1.2714e+06 0.1 #_orig_obs: 4.11092e+06 survey2
2007 4 3 1.39971e+06 0.1 #_orig_obs: 2.01791e+06 survey2
2008 4 3 732212 0.1 #_orig_obs: 1.30826e+06 survey2
2009 4 3 1.30214e+06 0.1 #_orig_obs: 1.66939e+06 survey2
2010 4 3 1.84886e+06 0.1 #_orig_obs: 469887 survey2
2011 4 3 1.78522e+06 0.1 #_orig_obs: 1.63082e+06 survey2
2012 4 3 1.7909e+06 0.1 #_orig_obs: 2.72819e+06 survey2
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
1985  1 1  0 0 1 -1 -1 852  152.64 434.374 188.12 64.3642 11.8029 0.699427 0
1986  1 1  0 0 1 -1 -1 583  33.8751 345.985 144.862 48.7527 8.97784 0.508157 0.0392346
1987  1 1  0 0 1 -1 -1 762  80.0891 220.578 332.397 108.188 19.5519 1.19703 0
1988  1 1  0 0 1 -1 -1 737  90.8614 326.774 133.71 156.776 27.2497 1.62912 0
1989  1 1  0 0 1 -1 -1 692  204.036 267.744 143.668 45.9572 28.9374 1.53571 0.122304
1990  1 1  0 0 1 -1 -1 684  306.907 292.118 56.5037 23.5709 4.90019 0 0
1991  1 1  0 0 1 -1 -1 777  132.093 552.501 77.9004 11.7156 2.61416 0.137962 0.0375619
1992  1 1  0 0 1 -1 -1 568  40.3643 310.624 193.823 23.1888 0 0 0
1993  1 1  0 0 1 -1 -1 548  106.229 162.211 184.344 89.7253 5.3376 0.132461 0.0199586
1994  1 1  0 0 1 -1 -1 526  90.5382 295.87 66.0151 58.0777 15.4991 0 0
1995  1 1  0 0 1 -1 -1 500  60.4777 272.61 132.261 22.965 10.8014 0.884629 0
1996  1 1  0 0 1 -1 -1 463  171.176 149.553 100.187 37.9816 3.55311 0.54938 0
1997  1 1  0 0 1 -1 -1 454  162.712 240.925 30.9212 16.0613 3.26725 0.0944268 0.0187721
1998  1 1  0 0 1 -1 -1 459  58.1568 320.999 70.6759 7.07009 2.09788 0 0
1999  1 1  0 0 1 -1 -1 428  46.8289 193.442 158.877 27.2592 1.5931 0 0
2000  1 1  0 0 1 -1 -1 366  50.6581 154.261 94.6783 60.6996 5.70326 0 0
2001  1 1  0 0 1 -1 -1 501  103.598 228.863 102.314 48.8226 16.9049 0.497114 0
2002  1 1  0 0 1 -1 -1 439  35.7044 274.967 88.7335 30.7774 7.9394 0.877966 0
2003  1 1  0 0 1 -1 -1 402  97.0958 124.435 138.507 34.7491 6.62028 0.536351 0.0564145
2004  1 1  0 0 1 -1 -1 459  205.292 187.571 33.2953 28.5255 4.31611 0 0
2005  1 1  0 0 1 -1 -1 394  73.0407 279.612 34.4133 6.93368 0 0 0
2006  1 1  0 0 1 -1 -1 421  63.2059 226.726 118.832 12.2359 0 0 0
2007  1 1  0 0 1 -1 -1 532  112.377 250.878 119.245 46.9305 2.5691 0 0
2008  1 1  0 0 1 -1 -1 445  37.9685 281.01 87.4127 31.6591 6.94929 0 0
2009  1 1  0 0 1 -1 -1 402  116.075 120.781 127.802 30.7739 6.138 0.429423 0
2010  1 1  0 0 1 -1 -1 442  123.517 248.455 36.3688 29.4964 4.16298 0 0
2011  1 1  0 0 1 -1 -1 434  82.3006 263.3 75.9073 8.55519 3.9374 0 0
2012  1 1  0 0 1 -1 -1 370  68.8905 191.211 88.6693 21.2293 0 0 0
1990  10 2  0 0 1 -1 -1 118  104.868 10.9603 1.36327 0.808703 0 0 0
1991  10 2  0 0 1 -1 -1 40  26.4507 12.2107 1.33858 0 0 0 0
1992  10 2  0 0 1 -1 -1 122  54.7947 46.4149 18.6413 2.14911 0 0 0
1993  10 2  0 0 1 -1 -1 119  88.4705 14.7358 10.7406 4.52934 0.523809 0 0
1994  10 2  0 0 1 -1 -1 53  36.1012 16.8988 0 0 0 0 0
1995  10 2  0 0 1 -1 -1 261  153.428 76.3421 23.8662 3.58266 2.62894 1.1518 0
1996  10 2  0 0 1 -1 -1 192  166.361 15.8937 6.83555 2.91001 0 0 0
1997  10 2  0 0 1 -1 -1 110  92.8161 15.1364 1.2507 0.796751 0 0 0
1998  10 2  0 0 1 -1 -1 176  103.156 62.7061 10.1376 0 0 0 0
1999  10 2  0 0 1 -1 -1 495  284.954 129.803 68.6681 11.5744 0 0 0
2000  10 2  0 0 1 -1 -1 464  299.245 99.8847 39.3945 21.8629 3.61331 0 0
2001  10 2  0 0 1 -1 -1 268  197.419 47.6677 13.6783 5.65305 3.07664 0.505391 0
2002  10 2  0 0 1 -1 -1 602  286.321 240.97 49.9109 14.9939 6.08019 3.1519 0.572367
2003  10 2  0 0 1 -1 -1 56  44.188 6.08229 5.72973 0 0 0 0
2004  10 2  0 0 1 -1 -1 294  263.064 25.2303 5.70537 0 0 0 0
2005  10 2  0 0 1 -1 -1 740  510.582 209.073 16.375 1.90871 1.45711 0.333045 0.271032
2006  10 2  0 0 1 -1 -1 335  221.92 82.8662 27.332 2.88185 0 0 0
2007  10 2  0 0 1 -1 -1 553  413.617 98.3612 41.0217 0 0 0 0
2008  10 2  0 0 1 -1 -1 344  169.161 135.992 27.0861 8.506 3.25547 0 0
2009  10 2  0 0 1 -1 -1 149  123.18 13.7529 12.0668 0 0 0 0
2010  10 2  0 0 1 -1 -1 172  136.889 29.7742 5.33712 0 0 0 0
2011  10 2  0 0 1 -1 -1 889  623.537 217.703 40.2614 7.49917 0 0 0
2012  10 2  0 0 1 -1 -1 464  328.964 98.9284 29.3447 5.69363 0.553532 0.369163 0.146651
1985  4 3  0 0 1 -1 -1 1000  769.209 163.087 45.8469 14.5962 7.26064 0 0
1986  4 3  0 0 1 -1 -1 1000  484.297 368.4 100.1 31.3476 10.2469 3.42332 2.18553
1987  4 3  0 0 1 -1 -1 1000  668.348 136.975 133.87 40.5469 13.0179 4.35891 2.88366
1988  4 3  0 0 1 -1 -1 1000  688.704 183.919 48.7364 53.1835 16.4546 5.38112 3.62134
1989  4 3  0 0 1 -1 -1 1000  862.73 84.3212 29.3633 8.74036 9.76859 3.06003 2.01682
1990  4 3  0 0 1 -1 -1 1000  920.614 65.2375 8.18692 3.17807 0.970608 1.1119 0.700859
1991  4 3  0 0 1 -1 -1 1000  742.783 230.822 21.0843 2.95112 1.17159 0.365452 0.822656
1992  4 3  0 0 1 -1 -1 1000  545.172 312.041 126.237 12.9308 1.85084 0.744665 1.02395
1993  4 3  0 0 1 -1 -1 1000  805.378 91.8037 67.8121 30.7088 3.23594 1.06194 0
1994  4 3  0 0 1 -1 -1 1000  756.056 183.852 26.6048 21.781 11.706 0 0
1995  4 3  0 0 1 -1 -1 1000  675.98 226.37 71.1484 11.4973 9.62152 4.55984 0.822031
1996  4 3  0 0 1 -1 -1 1000  902.997 58.8341 25.6004 9.0304 1.49782 1.2731 0.767548
1997  4 3  0 0 1 -1 -1 1000  888.088 97.7803 8.13509 3.93245 1.42214 0.641699 0
1998  4 3  0 0 1 -1 -1 1000  676.244 277.558 39.6151 3.68801 1.82372 1.07092 0
1999  4 3  0 0 1 -1 -1 1000  666.176 204.523 108.851 20.4494 0 0 0
2000  4 3  0 0 1 -1 -1 1000  723.725 164.192 65.4125 39.0226 6.38857 0.61808 0.641203
2001  4 3  0 0 1 -1 -1 1000  800.214 131.858 38.2936 17.0021 10.4355 1.75634 0.440539
2002  4 3  0 0 1 -1 -1 1000  566.43 325.391 68.2164 22.0152 10.0664 6.38297 1.49849
2003  4 3  0 0 1 -1 -1 1000  838.345 80.6878 58.6167 13.6781 4.59059 2.18296 1.89855
2004  4 3  0 0 1 -1 -1 1000  920.378 63.6958 7.42132 8.50468 0 0 0
2005  4 3  0 0 1 -1 -1 1000  758.852 218.508 22.6402 0 0 0 0
2006  4 3  0 0 1 -1 -1 1000  725.925 197.827 68.1895 8.05834 0 0 0
2007  4 3  0 0 1 -1 -1 1000  805.017 135.39 42.0883 17.5046 0 0 0
2008  4 3  0 0 1 -1 -1 1000  581.412 321.757 65.129 21.9447 9.75688 0 0
2009  4 3  0 0 1 -1 -1 1000  869.138 67.9441 46.9337 10.5113 3.69201 1.78118 0
2010  4 3  0 0 1 -1 -1 1000  847.547 127.701 12.1785 9.1881 2.1439 0.805582 0.436453
2011  4 3  0 0 1 -1 -1 1000  773.163 184.61 34.5883 7.63817 0 0 0
2012  4 3  0 0 1 -1 -1 1000  777.194 161.457 48.7532 12.5961 0 0 0
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

