#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""env_script.py: Simple TUI for selecting a Python virtual environment."""

__author__ = "Hudson Liu"
__email__ = "hudsonliu0@gmail.com"

import signal
import sys

from termcolor import colored

# Clean exit
EXIT_PRMPT = colored("\n\nExiting venv selector... ", "yellow") + ">_<"
def signal_handler(*_):
    """Handles ctrl c input"""
    print(EXIT_PRMPT)
    sys.exit()
signal.signal(signal.SIGINT, signal_handler)

# Banner
BANNER = colored("""
███████╗███████╗██╗     ███████╗ ██████╗████████╗    ██╗   ██╗███████╗███╗   ██╗██╗   ██╗
██╔════╝██╔════╝██║     ██╔════╝██╔════╝╚══██╔══╝    ██║   ██║██╔════╝████╗  ██║██║   ██║
███████╗█████╗  ██║     █████╗  ██║        ██║       ██║   ██║█████╗  ██╔██╗ ██║██║   ██║
╚════██║██╔══╝  ██║     ██╔══╝  ██║        ██║       ╚██╗ ██╔╝██╔══╝  ██║╚██╗██║╚██╗ ██╔╝
███████║███████╗███████╗███████╗╚██████╗   ██║        ╚████╔╝ ███████╗██║ ╚████║ ╚████╔╝ 
╚══════╝╚══════╝╚══════╝╚══════╝ ╚═════╝   ╚═╝         ╚═══╝  ╚══════╝╚═╝  ╚═══╝  ╚═══╝ 
""", "blue")
HEADER = HEADER = (colored("=========================[", attrs=["bold"]) +
	colored("An Environment Selector by Hudson Liu", "blue", attrs=["bold"]) +
	colored("]=========================", attrs=["bold"]))
print(BANNER + HEADER)

ENV_LIST = [l[:-1] for l in open("env_list.txt")]

print("Found the following environments: \n" + 
    "\n".join([f"  {e + 1}. {c}" for e, c in enumerate(ENV_LIST)])
)
print("Enter the number associated with the desired environment.\n")

while True:
    inp = input(colored("[TYPE HERE]> ", "green", attrs = ["bold"]))
    try:
        env = ENV_LIST[int(inp) - 1]
        with open("temp", "w") as f:
            f.write(env)
        break
    except:
        print(f"{colored("ERROR: ", "red", attrs=["bold"])}Your input, \"{inp}\", was not valid. Please try again.")


