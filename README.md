# posixbar

A simple posix progressbar.

## Usage

### progressbar
```bash
. ./progressbar.sh

echo "Program started, please wait"
progressbar 0 Start

#Do some tasks
progressbar 10 Initialize

#Do some tasks
progressbar 20 "Phase 1      "

#Do some tasks
progressbar 80 "Processing..."

#Do some tasks
progressbar 100 "Done         "
```

### spinner
```bash
. ./progressbar.sh

echo "Starting..."

spinner & spinid=$!
# do things
kill "$spinid"

printf "\n%s" "Done"
echo
```

## Installation

Simply save `progressbar.sh` your directory and make it executable
```
wget https://raw.githubusercontent.com/albertomosconi/posixbar/main/progressbar.sh
chmod +x progressbar.sh
```

