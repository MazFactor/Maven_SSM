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

    <!--froala_editor_2.7.4-->

    <!-- Include Font Awesome. -->
    <link href="../../utils/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css"/>

    <!-- Include Editor style. -->
    <link href="../../utils/froala_editor_2.7.4/css/froala_editor.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../utils/froala_editor_2.7.4/css/froala_style.min.css" rel="stylesheet" type="text/css"/>

    <!-- Include theme files. -->
    <link href="../../utils/froala_editor_2.7.4/css/themes/dark.min.css" rel="stylesheet" type="text/css" />
    <link href="../../utils/froala_editor_2.7.4/css/themes/red.min.css" rel="stylesheet" type="text/css" />
    <link href="../../utils/froala_editor_2.7.4/css/themes/gray.min.css" rel="stylesheet" type="text/css" />
    <link href="../../utils/froala_editor_2.7.4/css/themes/royal.min.css" rel="stylesheet" type="text/css" />

    <!-- Include Code Mirror style -->
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/codemirror.min.css">

    <!-- Include Editor Plugins style. -->
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/char_counter.css">
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/code_view.css">
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/colors.css">
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/emoticons.css">
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/file.css">
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/fullscreen.css">
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/image.css">
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/image_manager.css">
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/line_breaker.css">
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/quick_insert.css">
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/table.css">
    <link rel="stylesheet" href="../../utils/froala_editor_2.7.4/css/plugins/video.css">
    <!--froala_editor_2.7.4 End-->

    <!-- Google map -->
    <!--<link rel="stylesheet" href="css/style.css" type="text/css" media="all">-->

    <!-- Calendar & Clock -->
    <link rel="stylesheet" type="text/css" href="../../css/calendar.css">
    <!-- Icons from GroundworkCss -->
    <link rel="stylesheet" type="text/css" href="../../css/edit.css">
    <!-- Groundwork -->
    <!--<link rel="stylesheet" type="text/css" href="../../utils/groundwork/css/groundwork.css">-->
    <script type="text/javascript" src="../../js/Clock.js"></script>

    <style type="text/css">
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            margin: 0;
            /*padding: 0;*/
        }

        html, body {
            height: 100%;
            background: #fbfbf2;
            font-family: Verdana, sans-serif
        }

        .map {
            height:300px;
            width: 420px;
            border:6px solid #DAE3E6;
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
            border: 6px solid #fbfbf2;
            border-width: 6px 0 0;
        }

        .headerwrap {
            margin: 0 auto;
            height: 45px;
            background: url(../../img/headerbg.png) top center repeat-x;
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
            background-color: #FBFBF2;
            width: 100%;
            min-height: 100%;

            /*height: auto !important;*/
            /*height: 100%; !*ie6不识别min-height,如上述处理*!*/
        }

        .column-all {
            isplay: -webkit-flex;
            display: flex;
            margin: auto;
            height: 100%;
            /*background-color: #89b2a1;*/
            max-width: 1100px;
        }

        .column-left {
            -webkit-flex: initial;
            flex: initial;
            max-width: 640px;
            min-width: 100px;
            margin: 60px 0 60px 0;
            /*border-right: solid 1px #DAE3E6;*/
        }

        .column-right {
            -webkit-flex: 1;
            flex: 1;
            -webkit-align-items: center;
            align-items: center;
            -webkit-justify-content: center;
            justify-content: center;
            min-width: 420px;
            margin: 60px 0 60px 40px;
            /*border-top: solid 1px #DAE3E6;*/
        }

        .footertop {
            width: 100%;
            background: transparent url(../../img/footertop.png) top center no-repeat;
            clear: both;
            height: 78px;
            margin: 0 auto;
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

        .btn_submmit {
            padding-left: 80%;
            padding-top: 20px;
        }
    </style>
    <script type="text/javascript">
        function updateArt() {
            var title = document.getElementById("subject").value;
            var content = document.getElementById("edit");

            if (Trim(title.toString()).length === 0) {
                alert("标题不能为空！")
                return false;
            }

            if (Trim(content.innerText).length === 0) {
                alert("内容不能为空！")
                return false;
            }
            document.getElementById("articleForm").method = "post";
            document.getElementById("articleForm").submit();
        }


        function Trim(str) {
            var newStr = str.replace(/<[^>]+>/g, "");//去掉所有的html标记
            return (newStr.replace(/&nbsp;/g, "")).trim(); //去掉所有的&nbsp;
        }

        function trimRight(s) {
            if (s === null) return "";
            var whitespace = " \t\n\r";
            var str = s;
            if (whitespace.indexOf(str.charAt(str.length - 1)) !== -1) {
                var i = str.length - 1;
                while (i >= 0 && whitespace.indexOf(str.charAt(i)) !== -1) {
                    i--;
                }
                str = str.substring(0, i + 1);
            }
            return str;
        }
    </script>
</head>
<body onload="showTime();">

<!--Header Begin-->
<div id="header">
    <!--<a href="/TEc/index.html" class="logo"></a>-->
    <div class="On-Logo">
        <a class="Author-name" href="#">Http://TEc</a>
        <div id="result">dsfds</div>
    </div>
    <div id="nav-sec">
        <a href="#">
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

<div class="headerwrap"></div>
<!--Content-->
<div id="content">
    <div class="column-all">
        <!-- Left Part -->
        <div class="column-left">
            <form action="editArticle" method="post" id="articleForm">
                <input type="hidden" name="id" value="${article.id}">
                <div class="b-updatepage-subjectbox">
                    <dl class=" b-updatepage-field b-updatepage-field-subject ">
                        <dt class="b-updatepage-field-head">
                            <span class="b-updatepage-field-subhead">
                                <label for="subject">Subject</label>
                            </span>
                        </dt>
                        <dd class="b-updatepage-field-body" data-widget="restorable"
                            data-widget-options='{"name":"subject"}'>
                            <input type="text" name="subject" id="subject" value="${article.subject}"
                                   class="b-updatepage-input b-updatepage-input-subject" tabindex="40" maxlength="100">
                        </dd>
                    </dl>
                </div>
                <div>
                    <textarea id="edit" name="content">${article.content}</textarea>
                </div>
                <div class="btn_submmit">
                    <a href="#" class="button" onclick="updateArt();return false;">SUBMIT</a>
                </div>
            </form>

            <!-- Include jQuery. -->
            <script type="text/javascript" src="../../utils/jquery/jquery.min.js"></script>

            <!-- Include JS files. -->
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/froala_editor.min.js"></script>

            <!-- Include Code Mirror. -->
            <script type="text/javascript" src="../../utils/jquery/codemirror.min.js"></script>
            <script type="text/javascript" src="../../utils/jquery/xml.min.js"></script>

            <!-- Include Plugins. -->
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/align.min.js"></script>
            <!--<script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/char_counter.min.js"></script>-->
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/code_beautifier.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/code_view.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/colors.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/emoticons.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/entities.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/file.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/font_family.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/font_size.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/fullscreen.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/image.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/image_manager.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/inline_style.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/line_breaker.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/link.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/lists.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/paragraph_format.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/paragraph_style.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/quick_insert.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/quote.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/table.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/save.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/url.min.js"></script>
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/plugins/video.min.js"></script>

            <!-- Include Language file if we want to use it. -->
            <script type="text/javascript" src="../../utils/froala_editor_2.7.4/js/languages/ro.js"></script>

            <!-- Initialize the editor. -->
            <script>
                $(function () {
                    $('#edit').froalaEditor({
                        height: "600px",
                        toolbarSticky: false,
                        theme: 'gray',
                        zIndex: 2001,
                        fontFamily: {
                            "SimHei": '黑体',
                            "SimSun": '宋体',
                            "KaiTi": '楷体',
                            "YouYuan": '幼圆',
                            "Arial": 'Arial',
                            "Arial Black": 'Arial Black',
                            "Times New Roman": 'Times New Roman',
                            "Verdana": 'Verdana'
                        }
                    })
                });
            </script>

        </div>

        <!-- right -->
        <div class="column-right">
            <!-- Calendar -->
            <div id="Calendar">
                <div class="month">
                    <ul style="list-style-type: none">
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
                    <li>Su</li>
                    <li>Mo</li>
                    <li>Tu</li>
                    <li>We</li>
                    <li>Th</li>
                    <li>Fr</li>
                    <li>Sa</li>
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

<div class="footertop"></div>
<!-- Footer -->
<div id="footer">
    <p><br/>
        <span class="FooterText">Footer: the text color is like this or </span><span class="FooterText2">THIS</span>
    </p>
</div>

</body>
</html>
