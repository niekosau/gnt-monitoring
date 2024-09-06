default: run
venv           = .venv
venv_python    = $(venv)/bin/python
system_python  = $(or $(shell which python3.11), $(shell which python3), $(shell which python))
python         = $(or $(wildcard $(venv_python)), $(system_python))
POETRY		   = ${venv}/bin/poetry

run:
	${POETRY} lock
	${POETRY} install
	${POETRY} run gnt-monitoring
