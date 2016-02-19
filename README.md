# Git statistics and contributors for ARX

All statistics start from 2013-05-10, which means that the initial commits with which 
ARX was moved from Google Code to GitHub are omitted from the statistics.
Moreover, the statistics only cover the development process since this point in time.

The current statistics have been generated on 02/17/2016 and only account for changes to 
Java source code.

## Git statistics

[Top-5 Contributors to ARX](https://rawgit.com/arx-deidentifier/arx-contributors/master/gitinspector-statistics-all.html)

| Author                          | Commits    | Insertions      | Deletions    | % of changes |
|:--------------------------------|-----------:|----------------:|-------------:|-------------:|
| (1) Fabian Prasser              |  1762      |  159216         | 98433        |   76.73      |
| (2) Florian Kohlmayer           |   441      |   39720         | 26348        |   19.68      |
| (3) Karol Babioch               |   176      |    8731         |  3211        |    3.56      |
| (4) Igor Vujosevic              |     1      |      69         |     1        |    0.02      |
| (5) Raffael Bild                |     1      |       9         |    28        |    0.01      |

### Contributions by module

[Top-5 Contributors to ARX'S Privacy Engine](https://rawgit.com/arx-deidentifier/arx-contributors/master/gitinspector-statistics-main.html)

| Author                          | Commits    | Insertions      | Deletions    | % of changes |
|:--------------------------------|-----------:|----------------:|-------------:|-------------:|
| (1) Fabian Prasser              |     846    |      71308      |     43391    |        77.65 |
| (2) Florian Kohlmayer           |     253    |      17780      |     12181    |        20.28 |
| (3) Karol Babioch               |      39    |       2333      |       675    |         2.04 |
| (4) Igor Vujosevic              |       1    |          1      |         1    |         0.00 |
| (5) Raffael Bild                |       1    |          9      |        28    |         0.03 |

[Top-5 Contributors to ARX's Graphical Tool](https://rawgit.com/arx-deidentifier/arx-contributors/master/gitinspector-statistics-gui.html)

| Author                           | Commits    | Insertions      | Deletions    | % of changes |
|:---------------------------------|-----------:|----------------:|-------------:|-------------:|
| (1) Fabian Prasser               |  955       |  78639          |49250         |  80.70       |
| (2) Florian Kohlmayer            |  150       |  14350          | 7634         |  13.87       |
| (3) Karol Babioch                |  146       |   6179          | 2405         |   5.42       |
| (4) Shu                          |    1       |     14          |    4         |   0.01       |

[Top-5 Contributors to ARX's Tests](https://rawgit.com/arx-deidentifier/arx-contributors/master/gitinspector-statistics-test.html)

| Author                           | Commits    | Insertions      | Deletions    | % of changes |
|:---------------------------------|-----------:|----------------:|-------------:|-------------:|
| (1) Florian Kohlmayer            |   68       |   7121          | 6341         |  61.33       |
| (2) Fabian Prasser               |   90       |   5560          | 2928         |  38.67       |

[Top-5 Contributors to ARX's Examples](https://rawgit.com/arx-deidentifier/arx-contributors/master/gitinspector-statistics-example.html)

| Author                           | Commits    | Insertions      | Deletions    | % of changes |
|:---------------------------------|-----------:|----------------:|-------------:|-------------:|
| (1) Fabian Prasser               |  127       |   3401          | 2834         |  67.27       |
| (2) Florian Kohlmayer            |   27       |   1470          | 1199         |  28.79       |
| (3) Karol Babioch                |   14       |    184          |  113         |   3.20       |
| (4) Igor Vujosevic               |    1       |     68          |    0         |   0.73       |

## Further contributions

* The website was designed by Florian Kohlmayer and Fabian Prasser
* The development and hosting infrastructure is maintained by Florian Kohlmayer (with contributions from Fabian Prasser)
* The online content and documentation was written by Fabian Prasser (with contributions from Florian Kohlmayer)
* The data used for testing and evaluation was collected and prepared by Florian Kohlmayer (with contributions from Fabian Prasser and Helmut Spengler)

## External libraries

ARX uses several external libraries that can be found in the respective lib-folders. 
Moreover, the development of ARX has inspired the creation of several additional libraries which are now used by ARX:

* [SWT Preferences](https://github.com/prasser/swtpreferences) A preferences dialog for SWT. Created by Fabian Prasser.
* [SWT Knob](https://github.com/prasser/swtknob) A knob widget for SWT. Created by Fabian Prasser (with contributions from Florian Kohlmayer).
* [SWT Browser](https://github.com/prasser/swtbrowser) A browser widget for SWT. Created by Fabian Prasser.
* [SWT Choices](https://github.com/prasser/swtchoices) A dialog displaying multiple choices for SWT. Created by Fabian Prasser.
* [JHC](https://github.com/prasser/jhc) A Java library for interactive heat maps. Created by Fabian Prasser.
* [Newton Raphson](https://github.com/prasser/newtonraphson) A Java implementation of Newton's method. Created by Fabian Prasser (with contributions from Florian Kohlmayer).
* [JHPL](https://github.com/prasser/jhpl) A collection of data structures used for representing search spaces in ARX. Created by Fabian Prasser (with contributions from Florian Kohlmayer).
* [Object Selector](https://github.com/prasser/swtchoices) Object selection library for Java. Created by Fabian Prasser (with contributions from Florian Kohlmayer).
* [Subframe](https://github.com/prasser/subframe) A Java benchmarking library. Created by Fabian Prasser (with contributions from Johanna Eicher, Florian Kohlmayer and Fabian Stahnke).