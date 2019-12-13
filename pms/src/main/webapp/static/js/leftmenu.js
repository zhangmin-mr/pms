
function opencur(menu,img){

    var menu1 = document.all("menu1");
    if(menu1!=menu)
        menu1.style.display = "none";
    var img1=document.all("img1");
    img1.src='./static/images/icon_rig.gif';

    var menu1 = document.all("menu2");
    if(menu1!= menu)
        menu1.style.display="none";
    var img1=document.all("img2");
    img1.src='./static/images/icon_rig.gif';

    var menu1 = document.all("menu3");
    if(menu1!= menu)
        menu1.style.display="none";
    var img1=document.all("img3");
    img1.src='./static/images/icon_rig.gif';

    var menu1 = document.all("menu4");
    if(menu1!= menu)
        menu1.style.display="none";
    var img1=document.all("img4");
    img1.src='./static/images/icon_rig.gif';

    var menu1 = document.all("menu5");
    if(menu1!= menu)
        menu1.style.display="none";
    var img1=document.all("img5");
    img1.src='./static/images/icon_rig.gif';

    if(menu.style.display=="none")
    {
        menu.style.display="";
        img.src='./static/images/icon_down.gif';

    }
    else
    {
        menu.style.display="none";
        img.src='./static/images/icon_rig.gif';
    }
}