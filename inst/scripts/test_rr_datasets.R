utils::data("Galapagos_datalist", package = "DAISIE")
Galapagos_datalist

rr_galapagos <- DAISIE::DAISIE_ML_CS(
  datalist = Galapagos_datalist,
  initparsopt = c(1, 1, 50, 0.1, 1, 0.1),
  idparsopt = 1:6,
  parsfix = NULL,
  idparsfix = NULL,
  ddmodel = 11,
  optimmethod = "simplex",
  CS_version = DAISIE::create_CS_version(
    model = 2,
    relaxed_par = "cladogenesis",
    par_sd = 0.1,
    par_upper_bound = 1000
  ),
  jitter = 1e-5
)

utils::data("frogs_datalist", package = "DAISIE")
frogs_datalist

rr_frogs <- DAISIE::DAISIE_ML_CS(
  datalist = frogs_datalist,
  initparsopt = c(1, 1, 50, 0.1, 1, 0.1),
  idparsopt = 1:6,
  parsfix = NULL,
  idparsfix = NULL,
  ddmodel = 11,
  optimmethod = "simplex",
  CS_version = DAISIE::create_CS_version(
    model = 2,
    relaxed_par = "cladogenesis",
    par_sd = 0.1,
    par_upper_bound = 1000
  ),
  jitter = 1e-5
)


print("relaxed-rate for Galapagos is: ")
print(rr_galapagos)
print("relaxed-rate for frogs is: ")
print(rr_frogs)
