<%--
  Created by IntelliJ IDEA.
  User: 吴锋
  Date: 2018/10/29
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<body>
<div id="cc" class="easyui-layout" fit=true>
    <div data-options="region:'north',title:'North Title',split:true" style="height:100px;"></div>
    <div data-options="region:'south',title:'South Title',split:true" style="height:100px;"></div>
    <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;"></div>
    <div data-options="region:'west',title:'West',split:true" style="width:150px;">
        <!-- 手风琴 -->
        <div id="aa" class="easyui-accordion" fit=true>
            <div title="Title1" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">
                <!-- Tree -->
                <ul id="tree"></ul>
                <!-- Tree -->
            </div>
            <div title="Title2" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">

            </div>
        </div>
        <!-- 手风琴 -->
    </div>
    <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
        <!-- 选项卡 -->
        <div id="my_tabs" class="easyui-tabs" fit=true>
            <div title="Tab1" style="padding:20px;display:none;">
                tab1
            </div>
        </div>
        <!-- 选项卡 -->
    </div>
</div>
</body>
<script type="text/javascript">
    $('#tree').tree({
        url:'<%=request.getContextPath()%>/tree/queryTree.do',
        onClick: function(node){
            addGG(node.text,"<%=request.getContextPath()%>"+node.url);
        }
    });
    function addGG(tit,url){

        var exists =$('#my_tabs').tabs('exists',tit);
        if(!exists){
            $('#my_tabs').tabs('add',{
                title:tit,
                content:'<iframe style="width:100%;height:100%;position:relative;" src="'+url+'" frameborder="0" scrolling="true" ></iframe>',
                closable:true,
                tools:[{
                    iconCls:'icon-mini-refresh',
                    handler:function(){
                        var tab = $('#my_tabs').tabs("getSelected");
                        $('#my_tabs').tabs('update', {
                            tab: tab,
                            options: {
                            }
                        });
                    }

                }]
            });
        }else{
            //存在则选中
            $('#my_tabs').tabs('select',tit);
        }

    }
</script>
</html>
