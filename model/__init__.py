print("Chatbot model module")

import os
import sys
from logging import Logger

currentPath = os.path.abspath(os.path.dirname(__file__))
rootPath = os.path.split(currentPath)[0]

sys.path.append(rootPath)
sys.path.append(currentPath)
