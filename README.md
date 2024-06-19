# pptx2txt

在多个系统上将`.pptx`转为`txt`格式。

[options]

`-v` 在处理时会输出更多内容

`-h` 输出帮助内容



## 基本使用

重定向输出：`./pptx2txt.sh [options] PPTX_FILENAME > output.txt` 

可以将`.ppt`和`.key`格式的文件通过[LibreOffice](https://www.libreoffice.org/)转为`.pptx`后再进行转换 

** .ppt to .pptx **

~~~
libreoffice --headless --convert-to pptx filename.ppt
./pptx2txt.sh filename.pptx
~~~

** .key to .pptx ** (LibreOffice 5.x or newer)

~~~
libreoffice --headless --convert-to pptx filename.key
./pptx2txt.sh filename.pptx
~~~



## 遍历处理

为了批量转换，我另写了一个脚本来对指定目录下的所有`.pptx`进行遍历，都调用`pptx2txt.sh`来进行处理。

可以使用`alltxt.sh <directory>` 来对所有的

为了将文件进行区分且便于查找定位，我在每个文件的开头都添加了`111_目录_111`，结尾都添加了`222_目录_222`



还有换行符的问题，中英文的分界都会换行，不便于检索。可以考虑把换行符都去了，或者从xml的分析格式上进行改进。

直接将单页上的换行符都去掉算了

> 可以加入环境变量来更方便的使用脚本文件
>
> 或许可以考虑将遍历路径作为一个功能来加入，指定输入和输出路径



## 原版注释

command line bash shell script to convert PowerPoint `.pptx` format to text on Mac, Linux or Unix

~~~
USAGE: pptx2txt.sh [options] PPTX_FILENAME

OPTIONS:

  -v, --verbose     verbose output including filename and slide number heading

  -h, --help        display this help message

~~~

redirect output to a text file
~~~
./pptx2txt.sh [options] PPTX_FILENAME > output.txt
~~~

options for handling non-XML `.ppt` or Mac keynote (`.key`) formats

* convert `.ppt` or `.key` to `.pptx` using [LibreOffice](https://www.libreoffice.org/)

  ** .ppt to .pptx **
  
  ~~~
  libreoffice --headless --convert-to pptx filename.ppt
  ./pptx2txt.sh filename.pptx
  ~~~
  
  ** .key to .pptx ** (LibreOffice 5.x or newer)
  ~~~
  libreoffice --headless --convert-to pptx filename.key
  ./pptx2txt.sh filename.pptx
  ~~~
