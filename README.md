# shiny-template

Use this template to get started on a Shiny app that deploys automatically to RStudio Connect when changes are pushed to this repo.

## Setup Instructions

1.  Click the green "Use Template" button to create a copy of this repo.
2.  Open .github/workflows/deploy-to-connect.yaml and edit the values for `APP_NAME` and possibly `ACCESS_TYPE` (see options for access [here](https://github.com/rstudio/actions/tree/main/connect-publish#access-type))
3.  Run `renv::snapshot()` to make sure the lockfile is up to date
4.  Create an API key for RStudio Connect by going to viz.datascience.arizona.edu, clicking on your name in the upper right corner, and choosing "API keys". Copy the key that is generated---you will need it in the next step!
5.  Add GitHub Secrets
    1.  Go to the settings for the GitHub repo and choose the "Secrets" section

    2.  Choose "Actions" from the dropdown and add two repository secrets: One called RSCONNECT_URL that contains only `viz.datascience.arizona.edu` and another called RSCONNECT_APIKEY where you'll paste the key you generated in the previous step
6.  Commit your changes to the `renv` lockfile (if any) and deploy-to-connect.yaml and push those changes
7.  Check that the action ran in the "Actions" tab on the GitHub repo
8.  Optionally, [generate a status badge](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/adding-a-workflow-status-badge#using-the-workflow-file-name) to include in the README.
9.  Remove or comment out these setup instructions from the README, keeping everything below.

# App Name (edit this)

<!-- badges: start -->

<!-- badges: end -->

Edit this section to include a short description of the incubator project or purpose of the app and the main contacts for the project.  It should also link to the published shiny app eventually.


## Collaboration Guidelines

You can get started contributing by creating a new RStudio Project from this repository ([instructions](https://happygitwithr.com/new-github-first.html)).
You may have to fork this repository first if you do not have permission to push directly to this repository.

This project uses [`renv`](https://rstudio.github.io/renv/articles/renv.html) for package management and easy deployment of the app to RStudio Connect.
When opening the RStudio Project for the first time, `renv` should automatically install itself and prompt you to run `renv::restore()` to install all package dependencies.
You may also need to install some compilation tools found [here](https://mac.r-project.org/tools/) if you need to build packages from source code.

To contribute to this project, please create a new branch for your changes and make a pull request.
One easy way to do this from within R is with the `usethis` package and the `pr_*` functions.
`pr_init("branch-name")` begins a new branch locally, `pr_push()` helps you create a new pull request, and after it is merged you can use `pr_finish()` to clean things up.
More about this workflow [here](https://usethis.r-lib.org/articles/pr-functions.html).

When your changes are integrated into the main branch, the Shiny app should automatically be re-deployed using GitHub actions.
