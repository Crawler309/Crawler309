   var XMLHttpReq;  
        //����XMLHttpRequest����         
        function createXMLHttpRequest() {  
            if(window.XMLHttpRequest) { //Mozilla �����  
                XMLHttpReq = new XMLHttpRequest();  
            }  
            else if (window.ActiveXObject) { // IE�����  
                try {  
                    XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");  
                } catch (e) {  
                    try {  
                        XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");  
                    } catch (e) {}  
                }  
            }  
        }  
        //����������  
        function sendRequest() {  
         
            createXMLHttpRequest();  
            var url = "commonajax.jsp";  
           
            XMLHttpReq.open("GET", url, true);  
            XMLHttpReq.onreadystatechange = processResponse;//ָ����Ӧ����  
            XMLHttpReq.send(null);  // ��������  
        }  
        // ��������Ϣ����  
        function processResponse() {  
            if (XMLHttpReq.readyState == 4) { // �ж϶���״̬  
                if (XMLHttpReq.status == 200) { // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ  
                    Refresh();  
                    setTimeout("sendRequest()", 3000);  
                } else { //ҳ�治����  
                    window.alert("���������ҳ�����쳣��");  
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