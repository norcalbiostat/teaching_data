# Render codebook files


folder <- "MATH105"
files <- list.files(folder, pattern = ".csv")

for(f in 1:length(files)){
  rmarkdown::render(
    input  = 'MATH105/_create_105_codebook.Rmd', 
    output_file = gsub(".csv", ".html", files[f]), 
    params = list(
      data_name = gsub(".csv", "", files[f])
    )
  )  
}

