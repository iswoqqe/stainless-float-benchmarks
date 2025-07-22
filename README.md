# Stainless Float Benchmarks

- SMT-LIB files are generated using `[STAINLESS] --debug=smt --solvers=[SOLVER] --solver:cvc5=--arrays-exp --vc-cache=false --timeout=300 [SOURCE FILE...]`
	- `SOLVER` is `smt-z3` or `smt-cvc5`
	- `STAINLESS` is the executable `[STAINLESS_REPO_ROOT]/frontends/dotty/target/universal/stage/bin/stainless-dotty`

- The `run_solver.sh` script can run a solver on a subset of the generated SMT-LIB files.  For example, all files genreated for the `cvc5` solver
	- Usage example: `bash run_solver.sh 'cvc5 -q --produce-models --incremental --lang smt2.6 --arrays-exp' cvc5 log_cvc5.log`

- The log can be converted to csv using the awk script `to_csv.awk`
	- Usage example: `awk -f to_csv.awk log_cvc5.txt`
