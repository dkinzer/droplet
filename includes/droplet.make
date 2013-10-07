core = 7.x
api = 2

projects[] = drupal

projects[droplet][type] = profile
projects[droplet][download][type] = git
projects[droplet][download][url] = git://github.com/dkinzer/gush.git
projects[droplet][download][revision] = master

projects[droplet][type] = module
projects[droplet][download][type] = git
projects[droplet][download][url] = git://github.com/dkinzer/droplet.git
projects[droplet][download][revision] = master
projects[droplet][subdir] = "custom"
