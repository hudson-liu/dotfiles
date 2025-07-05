# A simple python virtual environment manager
The `env_list.txt` file contains the list of all environments. For instance, a potential layout would be the following:
```shell
├── Env_Random/
├── Env_ML/
├── Env_Manim/
│ 
├── env_list.txt
├── env_runner.sh
├── env_script.py
└── README.md
```
Note that, in the formatting of the env_list file, the "Env_" prefix should be removed. Do not include whitespaces in the name of the virtual environment.

Also, only the `env_runner.sh` file should ever be directly run. To select an environment, run the following command: 
```bash
source env_runner.sh
```
The only value that should be manually configured between devices is the value of `pypath` in the `env_runner.sh` file; just set it to where-ever the `env_script.py` program is located. For convenience, it is recommended to alias this command in your `.bashrc`.

## Creating New Environments
To create a new environment, first use pyenv to create a new version of Python (as of 1/30/25, TensorFlow does not yet support Python 3.13):
```bash
sudo pacman -S pyenv
pyenv install 3.12.8
pyenv local 3.12.8
```
Note that the remainder of these commands must be run in the same shell as the one where "`pyenv local 3.12.8`" was used. Then, create a virtual environment:
```bash
pyenv exec python3 -m venv Env_[NAME OF ENVIRONMENT]
```
(The "Env_" isn't required, it's just standard for the program and also expected by the `env_runner.sh` script.)
