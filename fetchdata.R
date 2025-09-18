library("rinat")

obs = get_inat_obs_project(grpid = "dome-direct-observation-and-monitoring-of-danube-region-ecosystems")

taxon.name = obs$taxon.name
taxon.id = obs$taxon.id
latitude = obs$latitude
longitude = obs$longitude
license = obs$license
url = obs$uri
create.time = obs$created_at
obs.date = obs$observed_on
user.name = obs$user.login

df = data.frame(taxon.name = taxon.name, taxon.id = taxon.id, obs.date = obs.date, create.time = create.time, latitude = latitude, longitude = longitude, user.name = user.name, license = license, url = url)

write.csv(df, "inaturalist-dome.csv", row.names = FALSE, quote = FALSE)

