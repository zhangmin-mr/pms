$(function () {
    //增加用户管理页面
    $("input[name='sName']").on(
        "blur", function () {
            // 移除文本内容
            $.post(
                "AjaxStaff.do?sName="
                + $(this).val(), function (data, status) {
                    var items = data.data.list;
                    $("#s1").html(data.msg);
                    if (items != null) {
                        $.each(items, function (i, n) {

                            console.log("ddd");
                            console.log(items[i].sId);


                            $("input[name='sIdentityId']").val(items[i].sIdentityId);
                            console.log(items[i].sDepartment.dId);
                            $("input[name='dIdOld']").val(items[i].sDepartment.dId);
                            $("input[name='sDepartment']").val(items[i].sDepartment.dName);
                            console.log(items[i].sPostcategory.pId);
                            $("input[name='pIdOld']").val(items[i].sPostcategory.pId);
                            $("input[name='sPostcategory']").val(items[i].sPostcategory.pName);
                            $("input[name='sId']").val(items[i].sId);
                        })

                    }

                })
        }
    )
})