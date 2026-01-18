###############################################################################
#### From http://kevinushey.github.io/blog/2015/02/02/rprofile-essentials/ ####
###############################################################################

# warn on partial matches
options(warnPartialMatchAttr = TRUE,
        warnPartialMatchDollar = TRUE,
        warnPartialMatchArgs = TRUE)

# enable autocompletions for package names in
# `require()`, `library()`
utils::rc.settings(ipck = TRUE)

# warnings are errors
# options(warn = 2)

# fancy quotes are annoying and lead to
# 'copy + paste' bugs / frustrations
options(useFancyQuotes = FALSE)

if (length(.libPaths()) > 1) {
    msg <- "Using libraries at paths:\n"
} else {
    msg <- "Using library at path:\n"
}
libs <- paste("-", .libPaths(), collapse = "\n")
message(msg, libs, sep = "")

options(max.print = 100)

#################################################################

#### From [usethis](https://usethis.r-lib.org/articles/usethis-setup.html) ####

options(
    usethis.full_name = "Kenneth Tyler Wilcox",
    usethis.protocol  = "ssh",
    usethis.description = list(
        "Authors@R" = utils::person(
            "Kenneth", "Wilcox",
            email = "ktwilcox@cornell.edu",
            role = c("aut", "cre"),
            comment = c(ORCID = "0000-0003-3969-0427")
        ),
        Version = "2022.1.9000"
    ),
    usethis.destdir = "~/Documents",
    usethis.overwrite = TRUE
)
#################################################################
