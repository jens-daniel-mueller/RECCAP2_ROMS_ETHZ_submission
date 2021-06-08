# This script summarizes the central commands and steps to set-up and organize a R project
# using the Workflowr package.
# For details please refer to:
# https://jdblischak.github.io/workflowr/articles/wflow-01-getting-started.html


# Repeated comments during work on the project ----------------------------

# commit regular changes (locally) and rebuild site
wflow_publish(all = TRUE, message = "cleaned outdated content")

# commit changes including _site.yml (locally) and rebuild site in the specified order
wflow_publish(here::here("analysis",
                         c(
                           "index.Rmd",
                           "overview.Rmd"
                         )),
              message = "switched navbar name from CESM to ROMS",
              republish = TRUE)

# Push latest version to GitHub
wflow_git_push()
jens-daniel-mueller
