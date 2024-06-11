#!/bin/bash
set -e

ant
# Names (without first character, t/T).
NAMES=(16h5 25h9 36h10 36h11 Circle21h7 Circle49h12 Custom48h12 Standard41h12 Standard52h13)
for name in ${NAMES[*]}; do
    java -cp april.jar april.tag.TagToYAML april.tag.Tag$name

    # cat scripts/copyright.txt > ../apriltag/t$name.c
    # cat t$name.c >> ../apriltag/t$name.c
    # rm t$name.c

    # cat scripts/copyright.txt > ../apriltag/t$name.h
    # cat t$name.h >> ../apriltag/t$name.h
    # rm t$name.h
done
