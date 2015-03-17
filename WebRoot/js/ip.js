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
    /* 取到所有的ip标签，得到数组 */
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
    /* 遍历上述数组，对每一个数组元素生成一个ip控件对象，调用其初始化方法 */
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