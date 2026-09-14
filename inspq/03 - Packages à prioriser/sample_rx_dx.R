library(data.table)
library(polypharmacy)

load("C:/Users/bougui01/Desktop/Mes Outils/Rinspq/data/dim_rls.rda")

rx <- copy(sample_Rx_unprocessed)
cohort <- data.table(id = sort(unique(rx$id)))
cohort[, sexe := sample(c("M", "F"), nrow(cohort), TRUE)]
cohort[, rls := sample(dim_rls$CODE, nrow(cohort), TRUE)]
cohort[, naiss := as.Date(sample(as.Date("1960-01-01"):as.Date("1990-12-31"), nrow(cohort), TRUE))]

set.seed(42)
dx <- vector("list", length(cohort$id))
for (i in cohort$id) {
  exec <- sample(0:1, 1, prob = c(0.2, 0.8))
  if (exec) {
    ndx <- sample(1:10, 1)
    dx[[i]] <- cohort[id == i, .(id)][rep(1, ndx)]
    dx[[i]][, start := as.Date(sample(as.Date("2000-01-01"):as.Date("2001-12-31"), ndx))]
    dx[[i]][, dx1 := sample(LETTERS[1:10], ndx, replace = TRUE)]
    dx[[i]][, dx2 := sample(c(LETTERS[1:10], NA), ndx, replace = TRUE, prob = c(rep(0.5/10, 10), 0.5))]
    dx[[i]][
      !is.na(dx2),
      dx3 := sample(c(LETTERS[1:10], NA),
                    nrow(dx[[i]][!is.na(dx2)]),
                    replace = TRUE, prob = c(rep(0.3/10, 10), 0.8))
    ]
    if (nrow(dx[[i]][!is.na(dx2)])) {
      dx[[i]][dx2 == dx1, dx2 := LETTERS[((match(dx2, LETTERS) + 1) %% 10) + 1]]
      if (nrow(dx[[i]][!is.na(dx3)])) {
        dx[[i]][dx3 == dx2, dx3 := LETTERS[((match(dx3, LETTERS) + 2) %% 10) + 1]]
      }
    }
  }
}
dx <- rbindlist(dx)

setkey(rx, id, start)
setkey(dx, id, start)
rx_dx <- merge(rx, dx, all = TRUE)
cohort_rx_dx <- unique(cohort[rx_dx, on = .(id)])

setkey(cohort_rx_dx, id, start)
save(cohort_rx_dx, file = "inspq/03 - Packages à prioriser/data_sample_rx.rda")
