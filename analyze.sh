#!/bin/bash
git clone https://github.com/ejwa/gitinspector.git
git clone https://github.com/arx-deidentifier/arx.git

git config --global merge.renameLimit 999999
git config --global diff.renameLimit 999999

./gitinspector/gitinspector.py --format=text --since=2013-05-10 --file-types=java --hard -x example -x test -x gui -w arx/ > gitinspector-statistics-main.txt
./gitinspector/gitinspector.py --format=text --since=2013-05-10 --file-types=java --hard -x example -x test -x main -w arx/ > gitinspector-statistics-gui.txt
./gitinspector/gitinspector.py --format=text --since=2013-05-10 --file-types=java --hard -x main -x test -x gui -w arx/ > gitinspector-statistics-example.txt
./gitinspector/gitinspector.py --format=text --since=2013-05-10 --file-types=java --hard -x example -x main -x gui -w arx/ > gitinspector-statistics-test.txt

./gitinspector/gitinspector.py --format=html --since=2013-05-10 --file-types=java --hard -x example -x test -x gui -w arx/ > gitinspector-statistics-main.html
./gitinspector/gitinspector.py --format=html --since=2013-05-10 --file-types=java --hard -x example -x test -x main -w arx/ > gitinspector-statistics-gui.html
./gitinspector/gitinspector.py --format=html --since=2013-05-10 --file-types=java --hard -x main -x test -x gui -w arx/ > gitinspector-statistics-example.html
./gitinspector/gitinspector.py --format=html --since=2013-05-10 --file-types=java --hard -x example -x main -x gui -w arx/ > gitinspector-statistics-test.html

rm -rf ./arx
rm -rf ./gitinspector

git add gitinspector-statistics-main.html
git add gitinspector-statistics-gui.html
git add gitinspector-statistics-example.html
git add gitinspector-statistics-test.html
git add gitinspector-statistics-main.txt
git add gitinspector-statistics-gui.txt
git add gitinspector-statistics-example.txt
git add gitinspector-statistics-test.txt

git commit -m "Update"
git push origin master