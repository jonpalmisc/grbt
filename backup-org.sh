#!/bin/sh

# Check usage
if [ "$#" -ne 1 ]; then
	echo "usage: $0 <org>"
	exit 1
fi

# Enter "depot" (backup) directory
mkdir -p depot
cd depot || exit 1

# Get all repos in the organization or user
REPOS=$(gh repo list "$1" --limit 1000 | awk '{print $1}')

# Clone or update every repo in the organization
for repo in $REPOS; do
	if [ -d "$repo" ]; then
		printf "sync\t%s\t" "$repo"

		cd "$repo" || exit 1
		git pull -q && echo "ok" || echo "error"
		cd ../../
	else
		printf "clone\t%s\t" "$repo"

		mkdir -p "$repo"
		gh repo clone "$repo" "$repo" -- -q 2>/dev/null && echo "ok" || echo "error"
	fi
done

cd ..
