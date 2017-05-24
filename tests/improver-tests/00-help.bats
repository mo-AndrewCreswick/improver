#!/usr/bin/env bats

@test "tests -h" {
  run improver tests -h
  [[ "$status" -eq 0 ]]
  read -d '' expected <<'__HELP__' || true
improver tests [--debug]

Run pep8, pylint, unit and CLI acceptance tests.

Optional arguments:
    --debug         Run in verbose mode (may take longer for CLI)
    -h, --help          Show this message and exit
__HELP__
  [[ "$output" == "$expected" ]]
}
