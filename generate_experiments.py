import os, sys
from datetime import datetime as dt

EXP_FILE="experiment_list.txt"
EXP_FOLDER="./tasks/"

with open(EXP_FILE, "r") as fp:
    exps = fp.read().strip().split("\n\n")

today = dt.today()
for i, exp in enumerate(exps):
    outfile = os.path.join(EXP_FOLDER, "exp{}-{}-{}-{}-{}-{}-{}.bash".format(
        i, today.year, today.month, today.day,
        today.hour, today.minute, today.second
    ))

    with open(outfile, "w+") as fp:
        fp.write(exp)