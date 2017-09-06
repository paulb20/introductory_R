#c_levels <- unique(latestlfs_srvyr$variables$levqul15)

#testout <- purrr::map_df(c_levels, function(cn) {
#  latestlfs_srvyr %>% 
#    summarize(prop = survey_mean(levqul15 == cn, proportion = TRUE, vartype = "ci")) %>%
#    mutate(levqul = cn)
#})