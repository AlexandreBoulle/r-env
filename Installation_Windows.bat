docker pull alexboulle/r-4.4.1-env
echo docker run --rm -ti -dp 8787:8787 -e DISABLE_AUTH=true -v "%CD%\Project":/home/rstudio/project alexboulle/r-4.4.1-env >> R_env.bat
