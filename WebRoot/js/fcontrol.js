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
            var url = "controlajax.jsp";  
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
       //-------����״̬ʶ�����-----
       // var isstart = XMLHttpReq.responseXML.getElementsByTagName("Isstart")[0].firstChild.nodeValue; 
        }