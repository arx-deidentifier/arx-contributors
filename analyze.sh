#!/bin/bash
git clone https://github.com/ejwa/gitinspector.git
git clone https://github.com/arx-deidentifier/arx.git
git config --global merge.renameLimit 999999
git config --global diff.renameLimit 999999
./gitinspector/gitinspector.py --format=html --since=2013-05-10 --grading=true --metrics=true --file-types=java --hard -x example -x test -x gui -w arx/ > statistics-main.html
./gitinspector/gitinspector.py --format=html --since=2013-05-10 --grading=true --metrics=true --file-types=java --hard -x example -x test -x main -w arx/ > statistics-gui.html
./gitinspector/gitinspector.py --format=html --since=2013-05-10 --grading=true --metrics=true --file-types=java --hard -x main -x test -x gui -w arx/ > statistics-example.html
./gitinspector/gitinspector.py --format=html --since=2013-05-10 --grading=true --metrics=true --file-types=java --hard -x example -x main -x gui -w arx/ > statistics-test.html
rm -rf ./arx
rm -rf ./gitinspector