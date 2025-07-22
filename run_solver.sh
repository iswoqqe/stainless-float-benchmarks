if [[ $# -lt 2 || $1 == "-h" || $1 == "--help" ]]
then
	echo "Usage: run_solver.sh [SOLVER_COMMAND] [SMT_SESSIONS_FILTER] [LOG_FILE]"
	exit 1
fi

SOLVER_COMMAND=$1
SMT_SESSIONS_FILTER=$2
LOG_FILE=$3
TIMEFORMAT=$'TIME:\n  real: %R\n  user: %U\n  sys:  %S'

echo SCRIPT STARTED: run_solver.sh \'$SOLVER_COMMAND\' \'$SMT_SESSIONS_FILTER\' \'$LOG_FILE\'

if [[ $# -le 2 ]]
then
	LOG_FILE=/dev/null
fi

for file in $(ls smt-sessions | grep "$SMT_SESSIONS_FILTER" | sort -t'-' -k2,2 -k3,3n)
do
	{
	echo
	echo COMMAND: $SOLVER_COMMAND smt-sessions/$file
	echo -n 'TIMESTAMP: '
	date -Iseconds
	echo -n 'OUTPUT: '
	time $SOLVER_COMMAND smt-sessions/$file | tail -n1
	echo EXIT CODE: ${PIPESTATUS[0]}
	echo
	} 2>&1 | tee -a $LOG_FILE
done
