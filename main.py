#!/usr/bin/env python
# -*- conding: utf-8 -*-

import os
import sys

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine

if __name__ == "__main__":
    # Set up the application window
    app = QGuiApplication(sys.argv)
    qml_file = os.path.join(os.path.dirname(__file__), "view.qml")
    engine = QQmlApplicationEngine(qml_file)

    # execute
    exit(app.exec_())
