<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="Keywords" content="关键词,关键词">
    <meta name="description" content="">
    <title></title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.42.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/base.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/headbott.css" type="text/css"/>
    <!-- Chang URLs to wherever Video.js files will be hosted -->
    <link href="${pageContext.request.contextPath }/css/video-js.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/css/product-detail.css" rel="stylesheet" type="text/css">
    <!-- video.js must be in the <head> for older IEs to work. -->
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/video.js"></script>


</head>
<body>
<div id="header">
    <div class="heade-con">
        <div class="logo"><a href=""><img src="${pageContext.request.contextPath }/images/LOGO.png"/></a></div>
        <div class="nav posa">
            <ul>
                <li><a class="vcolor" href="/crowdfunding/zhuan/toIndex">首页</a></li>
                <li><a href="/crowdfunding/zhuan/to_gyzc-list">公益众筹</a></li>
                <li><a href="/crowdfunding/zhuan/to_cop">常见问题</a></li>
                <li><a href="/crowdfunding/zhuan/to_ly-list">众筹资讯</a></li>
                <li><a href="/crowdfunding/zhuan/to_new_info" style="">发布项目</a></li>
            </ul>
        </div>
        <div class="search">
            <form action="">
                <input type="text" class="search-txt" value="找项目">
                <input type="submit" class="search-but" value="">
            </form>
        </div>
        <div class="index-login">
            <c:if test="${user!=null }">
            <a href="/crowdfunding/user/to_user?uName=${user.getuName() }">个人中心</a>
            <span style="color: white;">|</span>
            <a href="/crowdfunding/zhuan/out">退出</a>
            </c:if>
        	<c:if test="${user==null }">
            <a href="/crowdfunding/zhuan/userLogin">登录</a> 
            <span style="color: white;">|</span>
            <a href="/crowdfunding/zhuan/reg">注册</a>   
            </c:if>
        </div>
    </div>
</div>
<script>

  var d_var=$(".search .search-txt").val();
    $(".search .search-txt").focus(function(){
        if($(this).val()==d_var){
            $(this).val("");
        }});

    $(".search .search-txt").blur(function(){
        if($(this).val()==""){
            $(this).val("找项目");
        }
    });
</script>

<div class="p-detail_con">
<div class="p-detail_contit">
    <h1>"${p.pName }"</h1>
    <div class="p-detail_cfx">
        <span class="p-detail_contit"><a href=""><i></i>分享</a></span>
        <span class="p-detail_contit2"><a href=""><i></i>点赞</a></span>
    </div>
    <div class="p-detail_cfx2">
        <ul>
            <li class="p-detail_cfx2-1">发起人</li>
            <li class="p-detail_cfx2-2">${p.pUsername } <span>|</span></li>

            <li class="p-detail_cfx2-3">${p.pPlace } <span>|</span></li>
            <li class="p-detail_cfx2-4">${name }</li>
        </ul>
    </div>
    </div>

    <div class="p-detail-tab2">
        <ul>
            <li><a class="p-detail-tab2-tb" href="">项目主页</a></li>
            <li><a class="p-detail-tab2-tb2" href="">评论(3)</a></li>
        </ul>
    </div>
    <div class="p-detail_con2">
        <div class="p-detail_con2l">

            <div style="width:675px;height:445px;margin:30px auto">
                <video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" width="640" height="445" poster="images/oceans-clip.png" data-setup="{}">
                    <source src="${pageContext.request.contextPath }/images/n930.mp4" type='video/mp4' />
                    <track kind="captions" src="demo.captions.vtt" srclang="en" label="English"></track>
                    <!-- Tracks need an ending tag thanks to IE9 -->
                    <track kind="subtitles" src="demo.captions.vtt" srclang="en" label="English"></track>
                    <!-- Tracks need an ending tag thanks to IE9 -->
                </video>
            </div>

<div class="p-detail_txt1">

    <h3>项目介绍</h3>
    <div><img src="/imgUrl/${p.pCover }" alt=""/></div>
    <p>
        新华网湖北监利6月13日电（记者李鹏翔、梁建强）记者13日下午从“东方之星”号客轮翻沉事件前方指挥部新闻中心新闻发布会上获悉，经有关各方反复核实、逐一确认，“东方之星”号客轮上共有454人，其中成功获救12人，遇
        难442人。公安部门依法依规、科学严谨对搜寻到的遗体DNA进行了比对，已确认442具为遇难人员遗体并移交给家属。至此，全部遇难者遗体均已找到。据此，决定自即日起搜救工作结束。有关部门和地方人民政府要继续认真细致做
        好善后处理、事件调查等相关工作。
    </p>
    <p>
        新华网湖北监利6月13日电（记者李鹏翔、梁建强）记者13日下午从“东方之星”号客轮翻沉事件前方指挥部新闻中心新闻发布会上获悉，经有关各方反复核实、逐一确认，“东方之星”号客轮上共有454人，其中成功获救12人</p>
    <p>
        遇难442人。公安部门依法依规、科学严谨对搜寻到的遗体DNA进行了比对，已确认442具为遇难人员遗体并移交给家属。至此，全部遇难者遗体均已找到。据此，决定自即日起搜救工作结束。有关部门和地方人民政府要继续认真细致做
        好善后处理、事件调查等相关工作。
    </p>

    <h3>我的项目介绍</h3>
    <p>
        新华网湖北监利6月13日电（记者李鹏翔、梁建强）记者13日下午从“东方之星”号客轮翻沉事件前方指挥部新闻中心新闻发布会上获悉，经有关各方反复核实、逐一确认，“东方之星”号客轮上共有454人，其中成功获救12人，遇
        难442人。公安部门依法依规、科学严谨对搜寻到的遗体DNA进行了比对，已确认442具为遇难人员遗体并移交给家属。至此，全部遇难者遗体均已找到。据此，决定自即日起搜救工作结束。有关部门和地方人民政府要继续认真细致做
        好善后处理、事件调查等相关工作。
    </p>
    <p>
        新华网湖北监利6月13日电（记者李鹏翔、梁建强）记者13日下午从“东方之星”号客轮翻沉事件前方指挥部新闻中心新闻发布会上获悉，经有关各方反复核实、逐一确认，“东方之星”号客轮上共有454人，其中成功获救12人</p>
    <p>
        遇难442人。公安部门依法依规、科学严谨对搜寻到的遗体DNA进行了比对，已确认442具为遇难人员遗体并移交给家属。至此，全部遇难者遗体均已找到。据此，决定自即日起搜救工作结束。有关部门和地方人民政府要继续认真细致做
        好善后处理、事件调查等相关工作。
    </p>

    <div><img src="${pageContext.request.contextPath }/images/pu-s2_11.png" alt=""/></div>
</div>

            <div class="detail-bott">
           <p>标签：<a href="">短片</a><a href="">电影</a><a href="">bilding</a><a href="">love</a></p>
                <div class="detail-bott2"><i><img src="${pageContext.request.contextPath }/images/zcvprod-a_32.png" alt=""/></i>如果你对项目有疑问，可以发起咨询<span><a href="javascript:void(0);">对发起人提问</a></span></div>
<div class="textarea1">
    <textarea class="textarea2"></textarea>

    <form action=""><input class="textarea2-tji" type="submit" value="提交" /></form>
</div>
                <script>
                    $(".detail-bott2 span a").click(function(){
                        $(".textarea1").toggle();
                    })
                </script>
            </div>
        </div>

        <div class="p-detail_con2r">
            <div class="p-detail_con2r1">

                <div class="bot-con1zti"><img src="${pageContext.request.contextPath }/images/zcvprod-a_20.png" alt=""/></div>
                <div class="p-detail_con2r1tit">目前累计金额</div>
<div class="p-detail_con2r1min">￥${p.pRaise }</div>
                <div class="llloading-bar">
<div class="loading-bar">
                <div class="amount blue" style="width:9%">
                    <div class="loaded">
                    </div>
                    <fmt:formatNumber value="${p.pRaise*1.0/p.pMoney*100 }" type="number" var="d" pattern="#.##"></fmt:formatNumber>                    
                    <span>${d }%</span>
                    <div class="lines"></div>
                </div>
            </div></div>
                <p><span>目标</span><i>${p.pRaise }</i></p><br>
                <p><span>剩余</span><i>${p.pMoney-p.pRaise }</i></p><br>
                <p><span>支持者</span><i>${p.pJoin }</i></p>
                <fmt:formatDate value="${p.pEtime }" pattern="yyyy-MM-dd hh:mm:ss" var="date"/>
                <p class="loading-barcolo">截止时间:${date }</p>

            </div>
            <div class="loading-bzcz">
                <div class="loading-bzcz-1">
                <span>支持￥1</span><i>已有<b>${p.pJoin }</b>位支持者</i>
                </div>
                <a href="/crowdfunding/Initiator/to-detail">支持￥1</a>
            </div>
            <div class="loading-bzcz">
                <div class="loading-bzcz-1">
                <span>支持￥10</span><i>已有<b>${p.pJoin }</b>位支持者</i>
                </div>
                <p>电影签名海报和明信片。全国包邮。</p>
                <div class="l">运费：包邮</div>
                <div class=""><img src="${pageContext.request.contextPath }/images/zcvprod-a_24.png" alt=""/></div>
                <div class="l">预计发放时间</div>
                <a href="/crowdfunding/Initiator/to-detail1">支持￥10</a>
            </div><div class="loading-bzcz">
                <div class="loading-bzcz-1">
                <span>支持￥100</span><i>已有<b>${p.pJoin }</b>位支持者</i>
                </div>
                <p>电影签名海报和明信片。全国包邮。</p>
                <div class="l">运费：包邮</div>
                <div class=""><img src="${pageContext.request.contextPath }/images/zcvprod-a_24.png" alt=""/></div>
                <div class="l">预计发放时间</div>
                <a href="/crowdfunding/Initiator/to-detail2">支持￥100</a>
            </div><div class="loading-bzcz">
                <div class="loading-bzcz-1">
                <span>支持￥200</span><i>已有<b>${p.pJoin }</b>位支持者</i>
                </div>
                <p>电影签名海报和明信片。全国包邮。</p>
                <div class="l">运费：包邮</div>
                <div class=""><img src="${pageContext.request.contextPath }/images/zcvprod-a_24.png" alt=""/></div>
                <div class="l">预计发放时间</div>
                <a href="/crowdfunding/Initiator/to-detail3">支持￥200</a>
            </div><div class="loading-bzcz">
                <div class="loading-bzcz-1">
                <span>支持￥500</span><i>已有<b>${p.pJoin }</b>位支持者</i>
                </div>
                <p>电影签名海报和明信片。全国包邮。</p>
                <div class="l">运费：包邮</div>
                <div class=""><img src="${pageContext.request.contextPath }/images/zcvprod-a_24.png" alt=""/></div>
                <div class="l">预计发放时间</div>
                <a href="/crowdfunding/Initiator/to-detail4">支持￥500</a>
            </div>
            <div class="loading-bzcz">
                <div class="loading-bzcz-1">
                <span>支持￥1000</span><i>已有<b>${p.pJoin }</b>位支持者</i>
                </div>
                <p>电影签名海报和明信片。全国包邮。</p>
                <div class="l">运费：包邮</div>
                <div class=""><img src="${pageContext.request.contextPath }/images/zcvprod-a_24.png" alt=""/></div>
                <div class="l">预计发放时间</div>
                <a href="/crowdfunding/Initiator/to-detail5">支持￥1000</a>
            </div>

            <div class="loading-bzcz loading-bzcz2">
                <div class="loading-bzcz-2">
                    付款与退款说明：
                </div>
                <p>1.项目需在截止日期之前筹资成功</p>
                <p>  2.筹资失败的项目将会退款到会员余额中，下
                    次可以继续使用。如果需要提现的会员，可以
                    到会员中心点击提现申请！</p>
            </div>

            <div class="loading-bzcz">
                <div class="loading-bzcz-2">
                    发起人信息：
                </div>
                <div class="detali-fqrxx">
                    <div class="detali-fqrxx_header">
                        <img src="${pageContext.request.contextPath }/images/zcvprod-a_28.png" alt=""/></div>
                    <div class="detali-fqrxx_text">
                        <p>fanwe</p>
                        <p>上次登陆时间：2015/5/7</p>
                        <p class="h"><i><img src="${pageContext.request.contextPath }/images/dt_03.png" alt=""/></i><s>福建 福州</s><h2><img
                            src="${pageContext.request.contextPath }/images/delite-i_14.png" alt=""/></h2></p>
                        <p class="h"><i><img src="${pageContext.request.contextPath }/images/zcvprod-a_10.png" alt=""/></i><s>发信息</s></p>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>
<div id="bottom">
    <div class="bot-con1">
        <ul>
            <li class="bot-con1-li1">我们已经做到 </li>
            <li>单项支持人数<span class="inde-span1"></span></li>
            <li>单项筹款金额<span class="inde-span2"></span></li>
            <li>累计筹款金额<span class="inde-span3"></span></li>
        </ul>
    </div>
    <div class="bot-con1 bot-con2">
        <ul>
            <li class="bot-con1-li1">发起项目流程 </li>
            <li><span class="inde-span4"></span>发起人创建项目</li>
            <li><span class="inde-span5"></span>项目获得支持</li>
            <li><span class="inde-span6"></span>发起人发放回报</li>
            <li><span class="inde-span7"></span>用户收到回报</li>
        </ul>
    </div>
    <div class="bottom-ggt"><a href=""><img src="${pageContext.request.contextPath }/images/bottbom_68.jpg" alt=""/></a></div>
    <div class="zc-yqlink">
        <ul>
            <li><a href="">阿里巴巴集团</a></li>
            <li><a href="">淘宝网</a></li>
            <li><a href="">天猫</a></li>
            <li><a href="">聚划算</a></li>
            <li><a href="">全球速卖通</a></li>
            <li><a href="">阿里巴巴国际交易市场</a></li>
            <li><a href="">1688</a></li>
            <li><a href="">阿里妈妈</a></li>
            <li><a href="">阿里旅行</a></li>
            <li><a href="">阿里云计算</a></li>
            <li><a href="">阿里巴巴集团</a></li>
            <li><a href="">淘宝网</a></li>
            <li><a href="">天猫</a></li>
            <li><a href="">聚划算</a></li>
            <li><a href="">全球速卖通</a></li>
            <li><a href="">阿里巴巴国际交易市场</a></li>
            <li><a href="">1688</a></li>
            <li><a href="">阿里妈妈</a></li>
            <li><a href="">阿里云计算</a></li>
        </ul>
    </div>
    <div class="footer-bd">

            <a href=" ">关于淘宝</a>
            <a href=" ">合作伙伴</a>
            <a href=" ">营销中心</a>
            <a href=" ">廉正举报</a>
            <a href=" ">联系客服</a>
            <a href=" ">开放平台</a>
            <a href=" ">诚征英才</a>
            <a href=" ">联系我们</a>
            <a href=" ">网站地图</a>
            <a href=" ">法律声明</a>　　　
            <em>© 2003-2015 Taobao.com 版权所有</em><br>

       <br>
            <span>网络文化经营许可证：<a href=" ">浙网文[2013]0268-027号</a></span>
            <b>|</b>
            <span data-spm-protocol="i">增值电信业务经营许可证：<a href="">浙B2-20080224-1</a></span>
            <b>|</b>
            <span>信息网络传播视听节目许可证：1109364号</span>
            <b>|</b>
            <span>举报电话:0571-81683755</span>
    </div>
</div>
</body>
</html>