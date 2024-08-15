#' Compile an Excel Workbook
#'
#' Compile DataFrames into an Excel Workbook
#'
#' Simplifies the process of creating a multi-sheet Excel workbook using openxlsx by
#' removing the boilerplate necessary to iterate through sheets
#'
#' @param dataList List of dataframes to export to an Excel workbook. Each dataframe is
#' exported as its own sheet.
#' @param sheetLab Character vector to be used as worksheet labels. Length must be that
#' of dataList.
#' @param save TRUE/FALSE: Should the Excel workbook be saved?
#' @param name Name to be used for the Excel workbook.
#' @param path Save directory where the workbook will be saved if save == TRUE.
#'
#' @importFrom openxlsx addWorksheet createWorkbook saveWorkbook writeData
#'
#' @export

compileWorkbook <- function(dataList, sheetLab, save = FALSE, name = NULL, path = NULL) {
  # Checks
  if (length(dataList) != length(sheetLab)) {stop("Ensure you have one label per list element.")}
  if (save & (is.null(name) | is.null(path))) {stop("Provide a name and path for where the workbook is to be saved.")}
  if (!file.exists(path)) {stop("Provide a valid filepath for your workbook to be saved.")}

  wb <- createWorkbook(title = name)

  # Iterate through each sheet
  for (i in 1:length(dataList)) {
    addWorksheet(wb, sheetName = sheetLab[i])
    writeData(wb, sheetLab[i], dataList[[i]])
  }

  # Save or return
  if (save) {
    fullpath <- paste0(path,name,"_",Sys.Date(),".xlsx")
    saveWorkbook(wb, file = fullpath, overwrite = TRUE)
    cat("Workbook '",name,"' saved to `",path,"`\n", sep = "")
    return("Success!")
  } else {
    return(wb)
  }
}
