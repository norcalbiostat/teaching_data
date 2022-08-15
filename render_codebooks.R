# Render codebook files


folder <- "MATH105"
files <- list.files(folder, pattern = ".csv")

for(f in files){
  rmarkdown::render(
    input  = 'MATH105/_create_105_codebook.Rmd', 
    output_file = gsub(".csv", ".html", f), 
    params = list(
      data_name = gsub(".csv", "", f)
    )
  )  
}

