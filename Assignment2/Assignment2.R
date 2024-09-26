library(dplyr)

# 1. 1.1 Q1
hSF <- Hawks %>% filter(Species=="RT",Weight>=1000) %>% select("Wing","Weight","Tail")
print(hSF)

# 1. 1.1 Q2
# there are 3 variables in hSF, show it how many columns it has
# There are 4 examples nrow(), dim(), length(rownames()), summary() or str()
# obervations: print(nrow(hSF)) 398
# dim(hSF) 398 3 dim(hSF)[1] 398 dim(hSF)[2] 3
# length(rownames(hSF)) 398
# summary(hSF) overview of the data, str(hSF) all the data and the number of rows

# 1. 1.2 Q1
sorthSF <- hSF %>% arrange(Wing)

# 1. 1.3 Q1
species_code <- c("CH","RT","SS")
species_name_full <- c("Cooper's", "Red-tailed", "Sharp-shinned")
hawkSpeciesNameCodes <- data.frame(species_code, species_name_full)

# 1. 1.3 Q2
hawksFullName <- hawkSpeciesNameCodes %>% rename(Species = species_code)
hawksFullName <- left_join(Hawks, hawksFullName) %>% select(-Species) %>% rename(Species = species_name_full)

# 1. 1.3 Q3
print(hawksFullName %>% select(Species, Wing, Weight) %>% head(7))

# Does it matter .... I think it doesnt matter here, because the species_name_full contains all the species in Hawks
# difference   outer will create more NA cases

# 1. 1.4 Q1
hawksWithBMI <- Hawks %>% mutate(bird_BMI = 1000*Weight/Wing^2) %>% select(Species, bird_BMI) %>% arrange(desc(bird_BMI))

# 1. 1.5 Q1
hawksFullNameSum <- hawksFullName %>% group_by(Species) %>% summarize(num_rows=n(),
                                                                      mn_wing=mean(Wing, na.rm=TRUE),
                                                                      nd_wing=median(Wing,na.rm=TRUE),
                                                                      t_mn_wing=mean(Wing,min(0.1),na.rm=TRUE),
                                                                      b_wt_ratio=max(Wing/Tail, na.rm=TRUE))

# 1. 1.5 Q2
hawksFullNameNA <- hawksFullName %>% group_by(Species) %>% summarize(Wing=sum(is.na(Wing)),
                                                                     Weight=sum(is.na(Weight)),
                                                                     Culmen=sum(is.na(Culmen)),
                                                                     Hallux=sum(is.na(Hallux)),
                                                                     Tail=sum(is.na(Tail)),
                                                                     StandardTail=sum(is.na(StandardTail)),
                                                                     Tarsus=sum(is.na(Tarsus)))

# 2. 2.1 Q1
# A random experiment is a procedure (real or imagined) which:
# 1. has a well-defined set of possible outcomes
# 2. could (at least in principle) be repeated arbitrary many times

# An event is a set of possible outcomes of an experiments

# A sample space is the set of all possible outcomes of interest for a random experiment



# 2. 2.1 Q2
# event: {1,2} , sample space: {{1,1},{1,2},{1,3},{1,4},{1,5},{1,6},{2,2},{2,3},{2,4},{2,5},{2,6},{3,3},{3,4},{3,5},{3,6},{4,4},{4,5},{4,6},{5,5},{5,6},{6,6}}
# Total number of different events is 21
# no


# 2. 2.2 Q1
# 1. {1,2,3,4,6} {1,2,3,4,5,6}
# 2. {2} {}
# 3. {1,3} {1,2,3}
# 4. No Yes
# 5. Yes
# 6. {1,2} and {3,4}        {1,2},{3,4}, and {5,6}

# 2. 2.2 Q2
# 1. A
# 2. empty
# 3. Draw a diagram is better
# 4. 6. in ipad

















