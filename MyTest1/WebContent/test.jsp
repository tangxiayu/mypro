<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

.bb{
		height:32px;
		background-color:#f1ee18;/*所有识别*/ 
		background-color:#00deff\9; /*IE6、7、8识别*/ 
		+background-color:#a200ff;/*IE6、7识别*/
		_background-color:#1e0bd1/*IE6识别*/
	 } 
	 @media screen and (-webkit-min-device-pixel-ratio:0){
	 	.bb{background-color:#f1ee18}
	 }{} /* Safari(Chrome) 有效 */
	@media all and (min-width: 0px){ 
		.bb{
			background-color:#f1ee18;/*opera and Safari(Chrome) and firefox*/ 
			background-color:#4cac70\0;
			}/* 仅 Opera 有效 */  
	}{} 
 	.bb, x:-moz-any-link, x:default{
 		background-color:#4eff00;/*IE7、Firefox3.5及以下 识别 */
 	} 
 	@-moz-document url-prefix(){
 		.bb{background-color:#4eff00;/*仅 Firefox 识别 */}
 	} 
 	* +html .bb{background-color:#a200ff;}/* 仅IE7 识别 */
	browsers td{width:8%;text-align:center;padding:8px;}} 
	.browsercolor{color:#333;font-size:18px;font-weight:bold;} 
	.ie6{background-color:#1e0bd1} 
	.ie7{background-color:#a200ff} 
	.ie8{background-color:#00deff} 
	.firefox{background-color:#4eff00} 
	.opera{background-color:#4cac70} 
	.other{background-color:#f1ee18;} 
	
	#tipTable td,#tipTable th{border:1px solid black;width:56px;height:16px;text-align:center;} 
	#wordTable td{margin-left:8px;} 
	#firefoxTip{display:none;} 
	#firefoxTip, x:-moz-any-link, x:default{display:block;/*IE7 firefox3.5及以下 识别 */+display:none/*再区分一次IE7*/} 
	@-moz-document url-prefix(){#firefoxTip{display:block;/*仅 firefox 识别 */}} 
	#ChromeTip{display:none;} 
	@media screen and (-webkit-min-device-pixel-ratio:0){#ChromeTip{display:block;}}{} /* safari(Chrome) 有效 */ 
	@media all and (min-width: 0px){#ChromeTip{display:none\0;} /* 仅 Opera 有效 */ }{} 
</head>
<body>

</body>
</html>