#!/bin/bash
git clone https://github.com/ejwa/gitinspector.git
git clone https://github.com/arx-deidentifier/arx.git
git config diff.renameLimit 10000
./gitinspector/gitinspector.py --format=htmlembedded --file-types=java --hard -x example -x test -x gui -w arx/ > statistics-main.html
./gitinspector/gitinspector.py --format=htmlembedded --file-types=java --hard -x example -x test -x main -w arx/ > statistics-gui.html
./gitinspector/gitinspector.py --format=htmlembedded --file-types=java --hard -x main -x test -x gui -w arx/ > statistics-example.html
./gitinspector/gitinspector.py --format=htmlembedded --file-types=java --hard -x example -x main -x gui -w arx/ > statistics-test.html
rm -rf ./arx
rm -rf ./gitinspector