function IsByte(str)
{
    if (str.replace(/[0-9]/gi, "") == "")
    {
        if (parseInt(str)>=0 && parseInt(str)<=255)
        {
            return true;
        }
    }
    
    return false;
}
function Ips_init() {
    /* ȡ�����е�ip��ǩ���õ����� */
    var tags = document.getElementsByTagName(_IP);
    if(!tags || tags.length == 0) {
        tags = document.getElementsByTagName(_ZIP);
    }
    
    if(!tags || tags.length == 0) {
        var divElem = document.getElementById("ipAddress");
        var id = divElem.getAttribute("id");
        var value = divElem.getAttribute("value");
        
        ipObj = new SSB_IP(id);
        ipObj.init();
        ipObj.setValue(value);
    }
else {
    /* �����������飬��ÿһ������Ԫ������һ��ip�ؼ����󣬵������ʼ������ */
    var ip = {};
    for(var i = 0; i < tags.length; i++) {
        var id = tags[i].getAttribute("id");
        var value = tags[i].getAttribute("value");
        
        ipObj = new SSB_IP(id);
        ipObj.init();
        ipObj.setValue(value);
    }
}
}