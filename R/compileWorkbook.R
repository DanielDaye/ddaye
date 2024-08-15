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
#' of dataList
#' @param save TRUE/FALSE: Should the Excel workbook be saved?
#' @param name Name to be used for the Excel workbook
#' @param path Save directory where the workbook will be saved if save == TRUE
#'
#' @importFrom openxlsx addWorksheet createWorkbook saveWorkbook writeData

compileWorkbook <- function(dataList, sheetLab, save, name, path) {

}
