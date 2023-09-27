# A list of packages to check/install
required_packages <- c("ggplot2", "dplyr", "tidyr")

# Check if packages are not installed and then install
new_packages <- required_packages[!(required_packages %in% installed.packages()[,"Package"])]
if(length(new_packages)) install.packages(new_packages)

# Load the packages
lapply(required_packages, library, character.only = TRUE)

# Print a message to show that packages are successfully loaded
print("Packages are loaded successfully!")
