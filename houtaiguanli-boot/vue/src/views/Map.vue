<template>
  <div>
    <div id="container" style="width: 100%; height: calc(100vh - 100px)"></div>

    <div id="info"></div>
  </div>
</template>



<script type="text/javascript"
        src="https://webapi.amap.com/maps?v=1.4.15&key=3fcec3c7f32fbd1a11077170514ceeba"></script>

<script>
window._AMapSecurityConfig = {
  securityJsCode: 'fc5d9645c9c5a8b2d13d9c5cdc190c9e'
}
var content = [
  "<div style='font-size: 14px; color: red; width: 200px; height: 50px'>这是信息窗口</div>"
];
export default {
  name: "Map",
  data(){

  },
  created() {

  },
  mounted() {
    // 创建地图实例
    var map = new AMap.Map("container", {
      zoom: 12,
      center: [120.16430423046114,30.27241996931065],
      resizeEnable: true
    })

    var infoWindow = new AMap.InfoWindow({
      anchor: 'top-right',
      content: content.join("<br>")  //传入 dom 对象，或者 html 字符串
    });

    var clickHandler = function(e) {
      console.log('您在[ '+e.lnglat.getLng()+','+e.lnglat.getLat()+' ]的位置点击了地图！');

      infoWindow.open(map, [120.16430423046114,30.27241996931065]);
    };
    // map.on('click', clickHandler);

    var marker = new AMap.Marker({
      position: new AMap.LngLat(120.16430423046114,30.27241996931065),   // 经纬度对象，也可以是经纬度构成的一维数组[116.39, 39.9]
      title: '北京故宫',
      // icon: '//vdata.amap.com/icons/b18/1/2.png',
      // content: '<div style="font-size: 12px; width: 100px">这是我自定义的内容</div>'
    })
    marker.on('click', clickHandler);
    map.add(marker);


    // path 是驾车导航的起、途径和终点，最多支持16个途经点
    var path = []

    path.push([120.15684768939974, 30.231030035031903])
    path.push([120.17345592761995, 30.343703912049634])
    path.push([120.36137149120333, 30.31806211315695])

    map.plugin('AMap.DragRoute', function () {
      var route = new AMap.DragRoute(map, path, AMap.DrivingPolicy.LEAST_FEE)
      // 查询导航路径并开启拖拽导航
      route.search()
    })
    var polyLine = new AMap.Polyline({
      path: path,
      strokeWeight: 5,
      borderWeight: 5, // 线条宽度，默认为 1
      strokeStyle: "dashed",
      strokeColor: '#428100', // 线条颜色
      lineJoin: 'round' // 折线拐点连接处样式
    })
    map.add(polyLine)
  }

}
</script>

<style scoped>

</style>