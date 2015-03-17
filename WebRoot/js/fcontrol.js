var XMLHttpReq;  
        //创建XMLHttpRequest对象         
        function createXMLHttpRequest() {  
            if(window.XMLHttpRequest) { //Mozilla 浏览器  
                XMLHttpReq = new XMLHttpRequest();  
            }  
            else if (window.ActiveXObject) { // IE浏览器  
                try {  
                    XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");  
                } catch (e) {  
                    try {  
                        XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");  
                    } catch (e) {}  
                }  
            }  
        }  
        //发送请求函数  
        function sendRequest() {  
        	 
            createXMLHttpRequest();  
            var url = "controlajax.jsp";  
            XMLHttpReq.open("GET", url, true);  
            XMLHttpReq.onreadystatechange = processResponse;//指定响应函数  
            XMLHttpReq.send(null);  // 发送请求  
        }  
        // 处理返回信息函数  
        function processResponse() {  
            if (XMLHttpReq.readyState == 4) { // 判断对象状态  
                if (XMLHttpReq.status == 200) { // 信息已经成功返回，开始处理信息  
                    Refresh();  
                    setTimeout("sendRequest()", 3000);  
                } else { //页面不正常  
                    window.alert("您所请求的页面有异常。");  
                }  
            }  
        }  
        function Refresh() {
      	  var state = XMLHttpReq.responseXML.getElementsByTagName("state")[0].firstChild.nodeValue;              
          document.getElementById("RefreshState").innerHTML = state;
        var operate = XMLHttpReq.responseXML.getElementsByTagName("operate")[0].firstChild.nodeValue;              
        document.getElementById("RefreshOperate").innerHTML = operate;
        var total = XMLHttpReq.responseXML.getElementsByTagName("total")[0].firstChild.nodeValue;              
        document.getElementById("RefreshTotalData").innerHTML = total;
        var lastgathdate = XMLHttpReq.responseXML.getElementsByTagName("lastgathdate")[0].firstChild.nodeValue;              
        document.getElementById("RefreshLastGathData").innerHTML = lastgathdate;
        var starttime = XMLHttpReq.responseXML.getElementsByTagName("starttime")[0].firstChild.nodeValue;              
        document.getElementById("Refreshstart").innerHTML = starttime;
        var stoptime = XMLHttpReq.responseXML.getElementsByTagName("stoptime")[0].firstChild.nodeValue;              
        document.getElementById("Refreshstop").innerHTML = stoptime;
       //-------控制状态识别操作-----
       // var isstart = XMLHttpReq.responseXML.getElementsByTagName("Isstart")[0].firstChild.nodeValue; 
        }