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
            var url = "commonajax.jsp";  
           
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
        	var j=document.getElementById("Isize").value;
        	for(var i=0;i<j;i++)
           {
            var state = XMLHttpReq.responseXML.getElementsByTagName("state"+i)[0].firstChild.nodeValue;              
            document.getElementById("Refreshstate"+i).innerHTML = state;
            var total = XMLHttpReq.responseXML.getElementsByTagName("total"+i)[0].firstChild.nodeValue;              
            document.getElementById("RefreshTotal"+i).innerHTML = total;
 
            var starttime = XMLHttpReq.responseXML.getElementsByTagName("starttime"+i)[0].firstChild.nodeValue;              
            document.getElementById("RefreshStartTime"+i).innerHTML = starttime;
            var stoptime = XMLHttpReq.responseXML.getElementsByTagName("stoptime"+i)[0].firstChild.nodeValue;              
            document.getElementById("RefreshStopTime"+i).innerHTML = stoptime;
            var interval = XMLHttpReq.responseXML.getElementsByTagName("interval"+i)[0].firstChild.nodeValue;              
            document.getElementById("RefreshInterval"+i).innerHTML = interval;
           }
        } 