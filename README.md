# 安装
cordova plugin add https://github.com/liuxiang/cordova-plugin-joinQQGroup.git

# 使用
* 获取群信息key 登录网页 http://qun.qq.com/join.html
* Native调用（Android,ios）
```
JoinQQGroup.open({key:'y-stNxKaFTfKNeDKRXdk9FXOKEpG22PG'}); -- android
JoinQQGroup.open({uin:'498644453',key:'0160929211e558ce77c3c044c510920d80c91088c1d047e66b27f57b40e8ba66'}); -- ios
```

* web调用（过程存在浏览器中转，且依赖插件`cordova-plugin-inappbrowser`)
```
window.open('http://shang.qq.com/wpa/qunwpa?idkey=c9fe8f010659e42d1592998108c4f8dbb54ffa265ae537ac729f32710bf6ef4b', "_system");
window.open("http://jq.qq.com/?_wv=1027&k=2GxZBsK", "_system");
```

* android调试
使用adt开发工具，导入platform/android工程，使用debug 调试，断点`joinQQGroup`执行代码即可

* ios调试
使用xcode开发工具，断点`joinQQGroup`执行代码即可

# 示例
```
if (app.isWeb) {
  window.location.href = "http://jq.qq.com/?_wv=1027&k=2GxZBsK";
} else {
  // window.open("http://jq.qq.com/?_wv=1027&k=2GxZBsK", "_system");// 依赖插件 cordova-plugin-inappbrowser
  if(app.isAndroid){
    JoinQQGroup.open({key:joinQQGroupJson.android.key});
  }else{
    JoinQQGroup.open({uin:joinQQGroupJson.ios.uin,key:joinQQGroupJson.ios.key});
  }
}
```
