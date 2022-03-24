## tex-report-get-tables.r
## Given a folder, this function will take .RData objects
## in turn them into tables in a latex file
## -------------------------------------------------------
## Author: Laura Tremblay-Boyer (lauratb@spc.int)
## Written on: July  3, 2015
## Time-stamp: <2015-07-10 07:14:19 lauratb>

## tbldir = folder where .RData files to convert to tables are
## texdir = folder where to save .tex (defaults to working directory)
## fname = name of .tex with tables
tbldir.texfile <- "WRITEUP/report-tables.tex"

make.latex.table <- function(tbldir, texdir=getwd(), fname=tbldir.texfile,
                             switch.truefalse=TRUE) {

    tbl2get <- list.files(tbldir, full.names=TRUE)

    add.tbl <- function(tbldata) {
        aa <- load(tbldata)
        assign("wtbl", get(aa)) # assign loaded object to name 'wtbl'
        wsp <- gsub("(.*):.*","\\1",wtbl$ref)


    col.logic <- which(sapply(wtbl$tbl, is.logical))
    if(switch.truefalse & length(col.logic)>0) {
        wtbl$tbl[,col.logic] <- c("No","Yes")[1+unlist(wtbl$tbl[,col.logic])]
    }

        wtbl$tbl[,sapply(wtbl$tbl, is.numeric)] %<>% round(2)

        wtbl$tbl[is.na(wtbl$tbl)] <- "---"

        cmdname <- gsub(":|\\.","",gsub("[0-9]","",wtbl$ref))
        cat(sprintf("\n\n\n\\newcommand{\\%s}{\n", cmdname), file=fname, append=TRUE)
        print(xtable(wtbl$tbl, label=wtbl$ref,
                     caption=sprintf("AIC improvement over null model for %s from a single explanatory variable", wsp)),
              caption.placement="top",
              include.rownames=FALSE, file=fname, append=TRUE)
        cat("\n}", file=fname, append=TRUE)
        message(paste0("\\",cmdname))
    }

    require(xtable)
    fname <- paste0(texdir, "/",fname)
    cat("%%%%%%%%% Defining latex macros to print tables %%%%%%%%%%", file=fname)
    message("Making latex tables...")
    dmm <- sapply(tbl2get, add.tbl)
}
