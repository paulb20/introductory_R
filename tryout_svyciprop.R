#c_levels <- unique(latestlfs_srvyr$variables$levqul15)

#testout <- purrr::map_df(c_levels, function(cn) {
#  latestlfs_srvyr %>% 
#    summarize(prop = survey_mean(levqul15 == cn, proportion = TRUE, vartype = "ci")) %>%
#    mutate(levqul = cn)
#})

latestlfs %>% filter(!is.na(LEVQUL15)) %>% ggplot(aes(x=GRSSWK, y=to_label(LEVQUL15))) + geom_joy(rel_min_height=0.01) + labs(title="Weekly earnings of workers, AJ 2017", x="Gross weekly earnings", y="Qualification level") + theme_joy()
latestlfs %>% filter(!is.na(HIQUL15D), GRSSWK < 1500) %>% ggplot(aes(x=GRSSWK, y=to_label(HIQUL15D))) + geom_joy(rel_min_height=0.01) + labs(title="Weekly earnings of workers, AJ 2017", x="Gross weekly earnings", y="Qualification level") + theme_joy()
latestlfs %>% filter(!is.na(HIQUL15D), HIQUL15D != 7,GRSSWK < 1500) %>% ggplot(aes(x=GRSSWK, y=to_label(HIQUL15D))) + geom_joy(rel_min_height=0.01) + labs(title="Weekly earnings of workers, AJ 2017", x="Gross weekly earnings", y="Qualification level") + theme_joy()
latestlfs %>% filter(!is.na(LEVQUL15), GRSSWK < 1500) %>% ggplot(aes(x=GRSSWK, y=to_label(LEVQUL15))) + geom_joy(rel_min_height=0.01) + labs(title="Weekly earnings of workers, AJ 2017", x="Gross weekly earnings", y="Qualification level") + theme_joy()





