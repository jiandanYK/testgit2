<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>众筹管理后台</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/dashboard.css" />
	</head>
	<body>
		
		 <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">众筹管理平台</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
        	
          <ul class="nav navbar-nav navbar-right">
          	<li><a href="index.html">首页</a></li>
          	<li><a href="#">欢迎,${user.getAdminName() }</a></li>
            <li><a href="#" title="修改个人资料和密码的页面">设置</a></li>
            <li><a href="#" title="退出登录">退出</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
        	<ul class="nav nav-sidebar">
            <li ><a href="index.html">首页</a></li>
           </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="/crowdfunding/adminUser/getProAll">所有项目*</a></li>
            <li><a href="#">项目审核</a></li>
            <li><a href="#">项目跟踪</a></li>
            <li><a href="#">项目评论</a></li>
            <li><a href="/crowdfunding/adminUser/getProClassAll">项目分类*</a></li>
            <li><a href="#">项目推荐</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">注册用户</a></li>
            <li><a href="">用户资金</a></li>
            <li><a href="">用户日志</a></li>
            <li><a href="">实名审核</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">新闻管理</a></li>
            <li><a href="">问题管理</a></li>
            <li><a href="">管理用户</a></li>
            <li><a href="">管理日志</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">${p.pName }项目</h1>
		
			<ul class="nav nav-tabs">
		  <li role="presentation" class="active"><a href="product-info1.html">基本信息</a></li>
		  <li role="presentation"><a href="product-info2.html">项目信息</a></li>
		  <li role="presentation"><a href="product-info3.html">项目评论</a></li>
		  <li role="presentation"><a href="product-info4.html">项目进度</a></li>
		  <li role="presentation"><a href="product-info5.html">项目跟踪</a></li>
		</ul>
          <div>
          		<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">申请人信息</h3>
				  </div>
				  <div class="panel-body">
				    <p>以下内容仅做示例</p>
				    <table class="table table-bordered">
				    	
					  <tr>
					  	<th>申请人</th>
					  	<td>${init.iName }</td>
					  </tr>
					  <tr>
					  	<th>申请人身份证</th>
					  	<td>${init.iId }</td>
					  </tr>
					  <tr>
					  	<th>申请人地址</th>
					  	<td>${init.iAddress }</td>
					  </tr>
					  <tr>
					  	<th>客服联系人</th>
					  	<td>${init.iPname }</td>
					  </tr>
					  <tr>
					  	<th>客服联系电话</th>
					  	<td>${init.iPtel }</td>
					  </tr>
					  <!-- <tr>
					  	<th>其它</th>
					  	<td>这只是个示例</td>
					  </tr> -->
					</table>
				  </div>
				</div>
				
				<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">项目信息</h3>
				  </div>
				  <div class="panel-body">
				    <p>以下内容仅做示例</p>
				    <table class="table table-bordered">
				    	
					  <tr>
					  	<th>项目类型</th>
					  	<td>${p.getProclass().getcName() }</td>
					  </tr>
					  <tr>
					  	<th>项目标题</th>
					  	<td>${p.pName }</td>
					  </tr>
					  <tr>
					  	<th>筹款目的</th>
					  	<td>${p.pAim }</td>
					  </tr>
					  <tr>
					  	<th>项目地点</th>
					  	<td>${p.pPlace }</td>
					  </tr>
					  <tr>
					  	<th>筹资金额</th>
					  	<td>${p.pMoney }</td>
					  </tr>
					  <tr>
					  	<th>筹资天数</th>
					  	<td>${time}</td>
					  </tr>
					  <!-- <tr>
					  	<th>自定义标签</th>
					  	<td>xxxxxx,xxx,xx,xx,</td>
					  </tr> -->
					  <tr>
					  	<th>封面图</th>					    
					  	<td><img src="/crowdfunding/upload/${p.pCover }" alt="" width="200" height="150"/></td>
					  	<%-- <td>/crowdfunding/upload/${p.pCover }</td> --%>
					  </tr>
					  <!-- <tr>
					  	<th>其它</th>
					  	<td>这只是个示例</td>
					  </tr> -->
					</table>
				  </div>
				</div>
          </div>
        </div>
      </div>
    </div>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/admin/js/jquery1.12.4.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/admin/js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/admin/js/countUp.js" ></script>
		<script>
			$(document).ready(function() {
				
			});
		</script>
	</body>
</html>
