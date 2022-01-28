# posixbar

A simple posix progressbar.

## Installation

Simply save `progressbar.sh` your directory and make it executable
```
wget https://raw.githubusercontent.com/albertomosconi/posixbar/main/progressbar.sh
chmod +x progressbar.sh
```

## Usage

Here's an example of how to use this in your script
```bash
#!/bin/sh

source ./progressbar.sh

echo "Program started, please wait"

#Do some tasks
progress 10 Initialize

#Do some tasks
progress 20 "Phase 1      "

#Do some tasks
progress 40 "Phase 2      "

#Do some tasks
progress 60 "Processing..."

#Do some tasks
delay
progress 80 "Processing..."

#Do some tasks
delay
progress 90 "Processing..."

#Do some tasks
delay
delay
progress 100 "Done        "
```
