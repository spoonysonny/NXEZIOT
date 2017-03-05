<div class="welcomePic">
  <div class="login-form main-appear">
    <h1>添加一个房屋</h1>
    <div class="form">
      <form>
        <div class="createHouse" data-toggle="distpicker">
          <select  required data-province="---- 选择省 ----"></select>
          <i class="fa fa-chevron-down" aria-hidden="true" style="top:16%;"></i>

          <select required data-city="---- 选择市 ----"></select>
          <i class="fa fa-chevron-down" aria-hidden="true" style="top:50%;"></i>

          <select data-district="---- 选择区 ----"></select>
          <i class="fa fa-chevron-down" aria-hidden="true" style="top:83%;"></i>

        </div>
        <div class="input">
          <input type="text" id="username" placeholder="详细地址" required/>
          <i class="fa fa-address-book-o" aria-hidden="true"></i>
        </div>
        <div class="input">
          <input type="text" id="username" placeholder="设置别名" required/>
          <i class="fa fa-commenting" aria-hidden="true"></i>
        </div>
        <div class="input">
          <a style="float:right; color:white; font-size:16px; text-decoration:none; position:absolute; top:20%; right:5px;">*登入后可以管理房屋</a>
        </div>
        <div class="input">
        <input type="submit" id="login" value="创建" />
        </div>
      </form>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="./js/distpicker.js"></script>