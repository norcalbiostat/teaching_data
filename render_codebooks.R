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



# for (cy in c(4,6,8)) {
#   rmarkdown::render("~/StackOverflow/10466439/67525642.Rmd", 
#                     output_file = sprintf("cyl_%s.html", cy),
#                     params = list(cyl = cy))
# }
