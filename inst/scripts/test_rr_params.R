utils::data("Galapagos_datalist", package = "DAISIE")
Galapagos_datalist

rr_clado <- DAISIE::DAISIE_ML_CS(
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

rr_ext <- DAISIE::DAISIE_ML_CS(
  datalist = Galapagos_datalist,
  initparsopt = c(1, 1, 50, 0.1, 1, 0.1),
  idparsopt = 1:6,
  parsfix = NULL,
  idparsfix = NULL,
  ddmodel = 11,
  optimmethod = "simplex",
  CS_version = DAISIE::create_CS_version(
    model = 2,
    relaxed_par = "extinction",
    par_sd = 0.1,
    par_upper_bound = 1000
  ),
  jitter = 1e-5
)

rr_k <- DAISIE::DAISIE_ML_CS(
  datalist = Galapagos_datalist,
  initparsopt = c(1, 1, 50, 0.1, 1, 0.1),
  idparsopt = 1:6,
  parsfix = NULL,
  idparsfix = NULL,
  ddmodel = 11,
  optimmethod = "simplex",
  CS_version = DAISIE::create_CS_version(
    model = 2,
    relaxed_par = "carrying_capacity",
    par_sd = 0.1,
    par_upper_bound = 10000
  ),
  jitter = 1e-5
)

rr_immig <- DAISIE::DAISIE_ML_CS(
  datalist = Galapagos_datalist,
  initparsopt = c(1, 1, 50, 0.1, 1, 0.1),
  idparsopt = 1:6,
  parsfix = NULL,
  idparsfix = NULL,
  ddmodel = 11,
  optimmethod = "simplex",
  CS_version = DAISIE::create_CS_version(
    model = 2,
    relaxed_par = "immigration",
    par_sd = 0.1,
    par_upper_bound = 10
  ),
  jitter = 1e-5
)

rr_ana <- DAISIE::DAISIE_ML_CS(
  datalist = Galapagos_datalist,
  initparsopt = c(1, 1, 50, 0.1, 1, 0.1),
  idparsopt = 1:6,
  parsfix = NULL,
  idparsfix = NULL,
  ddmodel = 11,
  optimmethod = "simplex",
  CS_version = DAISIE::create_CS_version(
    model = 2,
    relaxed_par = "anagenesis",
    par_sd = 0.1,
    par_upper_bound = 1000
  ),
  jitter = 1e-5
)

print("relaxed-rate cladogenesis is: ")
print(rr_clado)
print("relaxed-rate extinction is: ")
print(rr_ext)
print("relaxed-rate carrying capacity is: ")
print(rr_k)
print("relaxed-rate immigration is: ")
print(rr_immig)
print("relaxed-rate anagensis is: ")
print(rr_ana)
