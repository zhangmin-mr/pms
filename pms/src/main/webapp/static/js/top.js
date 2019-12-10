function tick() {
    var hours, minutes, seconds, xfile;
    var intHours, intMinutes, intSeconds;
    var today;
    today = new Date();
    intYears=today.getYear();
    intMonths=today.getMonth()+1;
    intDates=today.getDate();
    intHours = today.getHours();
    intMinutes = today.getMinutes();
    intSeconds = today.getSeconds();
    if(navigator.appName == "Netscape")
    {
        intYears += 1900;
    }
    if(navigator.appName == "MSIE")
    {
        intYears += 1900;
    }
    if(navigator.appName == "Firefox")
    {
        intYears += 1900;
    }
    if(intHours<=12)
        strTime ="上午：";
    else if(intHours>=12 && intHours<=18)
        strTime ="下午：";
    else
        strTime ="晚上："
    if(intMinutes<10)
        intMinutes = "0" + intMinutes;
    if(intSeconds<10)
        intSeconds = "0"+intSeconds;

    timeString =intYears+"年"+intMonths+"月"+intDates+"日"+" "+strTime+" "+intHours+ ":"+intMinutes+":"+intSeconds;
    //Time.innerHTML = timeString;
    document.getElementById("Time").innerHTML = timeString;
    window.setTimeout("tick();", 100);
}
window.onload = tick;