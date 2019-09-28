<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/9/11
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>第一次上课作业</title>
</head>
<style>

  * {
    margin: 0;
    padding: 0;
    list-style: none;
  }
  img1
  {
    position:absolute;
    right:50px;
  }
  h1 {font-family:Georgia, serif;}

  #top{
    height: 50px;
    background: rgb(105, 121, 126);
    margin-bottom: 10px;
    display: flex;
    justify-content: space-between;
    padding-top: 10px;
  }
  .avatar {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    margin-right: 20px;
  }
  .container{
    width: 90%;
    margin: auto;
  }
  .row{
    display: flex;
    margin-bottom: 10px;
  }
  .columnd{
    margin-right: 15px;
    border: 1px solid #eee;
    border-radius: 5%;
    height: 350px;
  }
  .column-2{
    flex: 1 1 23%;
    background:rgba(0,0,0,0.6);
    margin-bottom:10px;

  }
  .column-3{
    flex: 1 1 23%;
    background:rgba(0,0,0,0.6);
    margin-bottom:10px;

  }
  .thumbnail {
    border-top-left-radius: 5%;
    border-top-right-radius: 5%;
    border-bottom-left-radius: 5%;
    border-bottom-right-radius: 5%;
    width: 100%;
    height: 50%;
  }
  p {
    text-indent: 2em;
    color:#fff;font-family:'微軟正黑體';
    text-align:center;font-size:16px;
  }

</style>

<body background="https://ossweb-img.qq.com/upload/webplat/info/lol/20180224/49448512742393.jpg">
<div id="top">

  <img src="https://ossweb-img.qq.com/images/lol/v3/logo.png" class="img1"/>

  <img src="data:image/jpeg;base64,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" class="avatar"/>


</div>

<div class="container">
  <div class="row">
    <div class="columnd column-2">
      <img src="https://game.gtimg.cn/images/lol/act/img/skin/big157009.jpg" class="thumbnail"/>
      <p>疾风剑豪  由于无法证明自己的清白，他出于自卫而杀死了自己的哥哥。
        虽然长老死亡的真相已然大白，亚索还是无法原谅自己的所作所为。他在家园的土地上流浪，
        只有疾风指引着他的剑刃</p>

    </div>
    <div class="columnd column-2">
      <img src="https://game.gtimg.cn/images/lol/act/img/skin/big202004.jpg" class="thumbnail"/>
      <p>戏命师   作为一名心思缜密的癫狂杀手，烬坚信谋杀是一门艺术。
        他曾在艾欧尼亚的监狱中服刑，但却因为执政议会里涌动着的暗流而得到释放，
        成为了权术斗争所利用的刺客</p>
    </div>
    <div class="columnd column-2">
      <img src="https://game.gtimg.cn/images/lol/act/img/skin/big238001.jpg" class="thumbnail"/>
      <p>影流之主   彻底抛弃了仁慈与怜悯的劫，是影流教派的领袖。他创立影流的目标是将艾欧尼亚的魔法和传统武术用于实战，
        驱逐诺克萨斯侵略者。在战争中，绝望指引他开启了神秘的暗影形态</p>
    </div>
    <div class="columnd column-2">
      <img src="https://game.gtimg.cn/images/lol/act/img/skin/big67013.jpg" class="thumbnail"/>
      <p>暗夜猎手  终其一生，她都在寻找杀害她全家的恶魔。
        她的手臂上装着十字弩，心中燃烧着熊熊的复仇怒火，从暗影中射出圣银弩箭的风暴，
        薇恩只有在杀死那些为黑暗魔法所控制的人和生物时，才能真正感到愉悦</p>
    </div>

  </div>

  <div class="row">
    <div class="columnd column-3">
      <img src="https://game.gtimg.cn/images/lol/act/img/skin/big17018.jpg" class="thumbnail"/>
      <p>迅捷斥候  不惧艰难险阻、不惧坎坷危途，提莫怀着无比的热情和欢欣的精神探索着整个世界</p>
    </div>
    <div class="columnd column-3">
      <img src="https://game.gtimg.cn/images/lol/act/img/skin/big22011.jpg" class="thumbnail"/>
      <p>寒冰射手   她克己、智慧、忠于理想，但并不适应自己作为领袖的角色，艾希与自己血脉中蕴藏的先祖魔法相通，挽起了臻冰打造的长弓</p>
    </div>
    <div class="columnd column-3">
      <img src="https://game.gtimg.cn/images/lol/act/img/skin/big64011.jpg" class="thumbnail"/>
      <p>盲僧   李青是艾欧尼亚古老武术的大师，讲原则、重信义的他能将神龙之灵的精粹运用自如，助他面对任何挑战</p>
    </div>

    <div class="columnd column-3">
      <img src="https://game.gtimg.cn/images/lol/act/img/skin/big24013.jpg" class="thumbnail"/>
      <p>武器大师   无论是各种兵器的技法，还是刻薄的挖苦嘲讽，贾克斯都无人能及，他是目前已知的最后一名艾卡西亚武器大师。曾经，故乡的人们狂妄自大地引来了虚空，结果导致家园被夷为平地</p>
    </div>
  </div>


</div>


</body>
</html>

