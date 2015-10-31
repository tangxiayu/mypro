<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>js事件委托</title>
<script>

function init() {

            var d = document.getElementById("test");

            d.appendChild(createUl());

 

            console.profile("f1");

            f1();

            console.profileEnd("f1");

 

            console.profile("f2");

            f2(d);

            console.profileEnd("f2");

        }

         

        //普通方式注册事件

        function f1() {

            var ul = document.getElementById("testUl");

 

            for (var i = 0; i < ul.childNodes.length; i++) {

                ul.childNodes[i].onclick = click;

            }

        }

         

        //事件委托

        function f2(d) {

            d.onclick = function(e) {

                var e = e || window.event;

                var target = e.srcElement || e.target;

 

                if (target.tagName == "LI") {

                    alert(target.innerHTML);

                }

            };

        }

 

        function click() {

            alert("1");

        }

 

        function createUl() {

            var ul = document.createElement("ul");

            ul.id = "testUl";

            var lis = "";

             

            for (var i = 0; i < 200; i++) {

                lis += "<li>" + i + "</li>";

            }

 

            ul.innerHTML = lis;

            return ul;

        }
        window.onload = function(){
			init();
        };
</script>
</head>
<body>
<div id="test"></div>
</body>
</html>