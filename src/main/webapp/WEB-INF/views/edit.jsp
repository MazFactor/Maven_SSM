<%--
  Created by IntelliJ IDEA.
  User: Markus
  Date: 2017/12/22 0022
  Time: 0:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Page</title>

    <!--Froala-->

    <!-- Include Font Awesome. -->
    <link href="../../utils/Froala/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <!-- Include Editor style. -->
    <link href="../../utils/Froala/css/froala_editor.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../utils/Froala/css/froala_style.min.css" rel="stylesheet" type="text/css"/>

    <!-- Include Code Mirror style -->
    <link rel="stylesheet" href="../../utils/Froala/css/codemirror.min.css">

    <!-- Include Editor Plugins style. -->
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/char_counter.css">
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/code_view.css">
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/colors.css">
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/emoticons.css">
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/file.css">
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/fullscreen.css">
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/image.css">
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/image_manager.css">
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/line_breaker.css">
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/quick_insert.css">
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/table.css">
    <link rel="stylesheet" href="../../utils/Froala/css/plugins/video.css">

    <!-- CSS rules for styling the element inside the editor such as p, h1, h2, etc. -->
    <link href="../../utils/Froala/css/froala_style.min.css" rel="stylesheet" type="text/css"/>

    <!--Froala End-->


    <!-- Calendar & Clock -->
    <link rel="stylesheet" type="text/css" href="../../css/calendar.css">
    <!-- Icons from GroundworkCss -->
    <link rel="stylesheet" type="text/css" href="../../css/edit.css">

    <script type="text/javascript" src="../../js/Clock.js"></script>
    <style type="text/css">
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            height: 100%;
        }

        #header {
            /*border-image: linear-gradient(to right, #216684, #83d0f2) 10;*/
            /*box-shadow: 0 0 9px 0 rgba(75, 216, 255, 0.3);*/
            width: 100%;
            height: 76px;
            clear: both;
            position: relative;
            background-color: #004359;
            padding-top: 16px;
            border: 6px solid #ffffff;
            border-width: 6px 0 0;
        }

        #nav-sec {
            position: absolute;
            width: 120px;
            height: 70px;
            top: 0;
            right: 0;
            /*border: solid 1px #ad3079;*/
            background-color: #000000;
        }

        #sign {
            position: absolute;
            width: 100%;
            height: 70px;
            margin: 0 auto;
            /*border: solid 1px #cccccc;*/
            text-align: center;
        }

        .login {
            color: #FFFFFF;
            line-height: 70px;
            /*font-family: Serif;*/
            font-size: 19px;
            /*font-weight: bold;*/
        }

        #content {
            background-color: #ffffff;
            width: 100%;
            min-height: 100%;

            /*height: auto !important;*/
            /*height: 100%; !*ie6不识别min-height,如上述处理*!*/
        }

        .column-all {
            display: -webkit-flex;
            display: flex;
            margin: 80px 20px 80px 90px;
            height: 100%;
            background-color: #ffffff;
        }

        .column-left {
            -webkit-flex: initial;
            flex: initial;
            width: 65%;
            min-width: 100px;
            border-right: solid 1px #DAE3E6;
            padding-right: 30px;
        }

        .column-right {
            -webkit-flex: 1;
            flex: 1;
            -webkit-align-items: center;
            align-items: center;
            -webkit-justify-content: center;
            justify-content: center;
            border-top: solid 1px #DAE3E6;
        }

        #footer {
            border: solid 1px #313131;
            width: 100%;
            height: 100px;
            background-color: #004359;
            bottom: 0;
        }

        .FooterText {
            color: #87908d;
            font-size: 20px;
        }

        .FooterText2 {
            color: #FFFFFF;
            font-size: 20px;
        }

        a {
            text-decoration: none;
            color: #000;
        }

        a:hover {
            color: #168da8;
        }

    </style>
</head>
<body onload="showTime()">

<!--Header Begin-->
<div id="header">
    <!--<a href="/TEc/index.html" class="logo"></a>-->
    <div class="On-Logo">
        <a class="Author-name" href="#">Http://TEc</a>
        <div id="result">dsfds</div>
    </div>
    <div id="nav-sec">
        <a href="localhost:63342/TEc/index.html">
            <div id="sign">
                <ul>
                    <li style="list-style-type:none;">
                        <span class="login">Sign in</span>
                        <!--<i class="icon-github" aria-hidden="true"></i>-->
                    </li>
                </ul>
            </div>
        </a>
    </div>
</div>

<!--Content-->
<div id="content">
    <div class="column-all">
        <!-- Left Part -->
        <div class="column-left">
            <form action="" method="post" id="post">
                <div class="b-updatepage-subjectbox">
                    <dl class=" b-updatepage-field b-updatepage-field-subject ">
                        <dt class="b-updatepage-field-head">
                            <span class="b-updatepage-field-subhead">
                                <label for="subject">Subject</label>
                            </span>
                        </dt>
                        <dd class="b-updatepage-field-body" data-widget="restorable"
                            data-widget-options='{"name":"subject"}'>
                            <input type="text" name="subject" id="subject"
                                   class="b-updatepage-input b-updatepage-input-subject" tabindex="40" maxlength="100">
                        </dd>
                    </dl>
                </div>
                <textarea id="edit" name="content"></textarea>
                <button>Submit</button>
            </form>

            <!-- Include jQuery. -->
            <script type="text/javascript" src="../../utils/jquery/jquery.min.js"></script>

            <!-- Include JS files. -->
            <script type="text/javascript" src="../../utils/Froala/js/froala_editor.min.js"></script>

            <!-- Include Code Mirror. -->
            <script type="text/javascript" src="../../utils/jquery/codemirror.min.js"></script>
            <script type="text/javascript" src="../../utils/jquery/xml.min.js"></script>

            <!-- Include Plugins. -->
            <script type="text/javascript" src="../../utils/Froala/js/plugins/align.min.js"></script>
            <!--<script type="text/javascript" src="utils/Froala/js/plugins/char_counter.min.js"></script>-->
            <script type="text/javascript" src="../../utils/Froala/js/plugins/code_beautifier.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/code_view.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/colors.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/emoticons.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/entities.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/file.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/font_family.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/font_size.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/fullscreen.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/image.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/image_manager.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/inline_style.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/line_breaker.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/link.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/lists.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/paragraph_format.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/paragraph_style.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/quick_insert.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/quote.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/table.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/save.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/url.min.js"></script>
            <script type="text/javascript" src="../../utils/Froala/js/plugins/video.min.js"></script>

            <!-- Include Language file if we want to use it. -->
            <script type="text/javascript" src="../../utils/Froala/js/languages/ro.js"></script>

            <!-- Initialize the editor. -->
            <script>
                $(function(){
                    //超大屏幕
                    var toolbarButtons   = ['fullscreen', 'bold', 'italic', 'underline', 'strikeThrough', 'subscript', 'superscript', 'fontFamily', 'fontSize', '|', 'color', 'emoticons', 'inlineStyle', 'paragraphStyle', '|', 'paragraphFormat', 'align', 'formatOL', 'formatUL', 'outdent', 'indent', 'quote', 'insertHR', '-', 'insertLink', 'insertImage', 'insertVideo', 'insertFile', 'insertTable', 'undo', 'redo', 'clearFormatting', 'selectAll', 'html'];
                    //大屏幕
                    var toolbarButtonsMD = ['fullscreen', 'bold', 'italic', 'underline', 'fontFamily', 'fontSize', 'color', 'paragraphStyle', 'paragraphFormat', 'align', 'formatOL', 'formatUL', 'outdent', 'indent', 'quote', 'insertHR', 'insertLink', 'insertImage', 'insertVideo', 'insertFile', 'insertTable', 'undo', 'redo', 'clearFormatting'];
                    //小屏幕
                    var toolbarButtonsSM = ['fullscreen', 'bold', 'italic', 'underline', 'fontFamily', 'fontSize', 'insertLink', 'insertImage', 'insertTable', 'undo', 'redo'];
                    //手机
                    var toolbarButtonsXS = ['bold', 'italic', 'fontFamily', 'fontSize', 'undo', 'redo'];
                    $('#edit').froalaEditor({
                        charCounterCount       : true,//默认
                        charCounterMax         : -1,//默认
                        language                 : 'zh_cn',
                        saveInterval            : 0,//不自动保存，默认10000
                        theme                    : "red",
                        height                   : "850px",
                        toolbarBottom           : false,//默认
                        toolbarButtonsMD        : toolbarButtonsMD,
                        toolbarButtonsSM        : toolbarButtonsSM,
                        toolbarButtonsXS        : toolbarButtonsXS,
                        toolbarInline           : false,//true选中设置样式,默认false
                        toolbarSticky           : false,
                        imageUploadMethod       : 'POST',
                        imageUploadURL           : './lib/imgUpload.php',
                        //imageUploadParam         : 'upImg',
                        imageUploadParams        : {id: "edit"},
                        placeholderText          : '博客从此开始',
                    })
                });
            </script>

        </div>

        <!-- right -->
        <div class="column-right">
            <!-- Calendar -->
            <div id="Calendar">
                <div class="month">
                    <ul>
                        <li class="prev">&#10094;</li>
                        <li class="next">&#10095;</li>
                        <script type="text/javascript">
                            var date = new Date();
                            var curYear = date.getFullYear();

                            var curMonth = date.getMonth();
                            var monthText = "";

                            switch (curMonth) {
                                case 0:
                                    monthText = "January".toUpperCase();
                                    break;
                                case 1:
                                    monthText = "February".toUpperCase();
                                    break;
                                case 2:
                                    monthText = "March".toUpperCase();
                                    break;
                                case 3:
                                    monthText = "April".toUpperCase();
                                    break;
                                case 4:
                                    monthText = "May".toUpperCase();
                                    break;
                                case 5:
                                    monthText = "June".toUpperCase();
                                    break;
                                case 6:
                                    monthText = "July".toUpperCase();
                                    break;
                                case 7:
                                    monthText = "August".toUpperCase();
                                    break;
                                case 8:
                                    monthText = "September".toUpperCase();
                                    break;
                                case 9:
                                    monthText = "October".toUpperCase();
                                    break;
                                case 10:
                                    monthText = "November".toUpperCase();
                                    break;
                                case 11:
                                    monthText = "December".toUpperCase();
                                    break;
                                default:
                                    break;
                            }
                            document.write("<li>" + monthText + "<br><span style='color: #FFFFFF; font-size:16px'>" + curYear + "</span></li>");
                        </script>
                    </ul>
                </div>

                <ul class="weekdays">
                    <li>Mo</li>
                    <li>Tu</li>
                    <li>We</li>
                    <li>Th</li>
                    <li>Fr</li>
                    <li>Sa</li>
                    <li>Su</li>
                </ul>

                <ul class="days">

                    <!--动态输出35天日历并高亮显示当前日期-->
                    <script type="text/javascript">
                        var curDate = new Date();
                        var calendar = document.getElementsByClassName("days")[0];
                        var year = curDate.getFullYear();
                        var month = curDate.getMonth() + 1;
                        var today = curDate.getDate();
                        var countDays = (new Date(year, month, 0)).getDate();


                        var highlighted = false; // 是否已高亮显示过当前日期?
                        curDate.setDate(1); //
                        var firstDayCurMonth = curDate.getDay(); // 当前月的1号是周几
                        var moMatch = [6, 0, 1, 2, 3, 4, 5];

                        curDate.setDate(0);
                        var lastDayLastMonth = curDate.getDate();
                        var dayNo = lastDayLastMonth - parseInt(moMatch[firstDayCurMonth]);
                        var restCount = 42 - moMatch[firstDayCurMonth] - 1; // 仅显示42天的日历

                        // 打印上个月日期
                        do {
                            if (dayNo > lastDayLastMonth) {
                                dayNo = 1;
                                break;
                            }
                            calendar.innerHTML += "<li>" + dayNo + "</li>\n";
                            dayNo++;
                        } while (true);

                        // 打印当前月日历并高亮显示当前日期
                        do {
                            if (today === dayNo && highlighted === false) {
                                calendar.innerHTML += "<li style='background: #43857b;color: white !important'>" + dayNo + "</li>\n";
                                highlighted = true;
                            }
                            else {
                                calendar.innerHTML += "<li>" + dayNo + "</li>\n";
                            }

                            // 如果是当前月最后一天则从下个月第一天开始继续打印直到打印完35天为止
                            if (dayNo === countDays)
                                dayNo = 1;
                            else
                                dayNo++;
                            restCount--;
                        } while (restCount !== 0);
                    </script>
                </ul>
            </div>
            <!--Calendar End-->
        </div>
    </div>

</div>


<!-- Footer -->
<div id="footer">
    <p><br/>
        <span class="FooterText">Footer: the text color is like this or </span><span class="FooterText2">THIS</span>
    </p>
</div>

</body>
</html>
