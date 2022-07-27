utils::data("Galapagos_datalist", package = "DAISIE")
Galapagos_datalist

upper_bound_10 <- system.time(DAISIE::DAISIE_ML_CS(
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
    par_upper_bound = 10
  ),
  jitter = 1e-5
))

upper_bound_100 <- system.time(DAISIE::DAISIE_ML_CS(
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
    par_upper_bound = 100
  ),
  jitter = 1e-5
))

upper_bound_1000 <- system.time(DAISIE::DAISIE_ML_CS(
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
))

upper_bound_inf <- system.time(DAISIE::DAISIE_ML_CS(
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
    par_upper_bound = Inf
  ),
  jitter = 1e-5
))

print("upper bound 10 time is: ")
print(upper_bound_10)
print("upper bound 100 time is: ")
print(upper_bound_100)
print("upper bound 1000 time is: ")
print(upper_bound_1000)
print("upper bound Inf time is: ")
print(upper_bound_inf)
