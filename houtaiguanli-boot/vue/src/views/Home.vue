<template>
  <div>
    <el-row :gutter="10" :span="10" style="margin-bottom: 40px">
      <el-col :span="6">
        <el-card>
          <div style="color: #409EFF">
            <div><i class="el-icon-user-solid">用户总数</i></div>
            <div style="padding: 10px 0;text-align: center; font-weight: bold">
            {{total}}
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card>
          <div style="color: #F56C6C">
            <div><i class="el-icon-money">销售总量</i></div>
            <div style="padding: 10px 0;text-align: center; font-weight: bold">
              200
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card>
          <div style="color: #E6A23C">
            <div><i class="el-icon-bank-card">收益总额</i></div>
            <div style="padding: 10px 0;text-align: center; font-weight: bold">
              ￥5000
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card>
          <div style="color: #67C23A">
            <div><i class="el-icon-s-shop">门店总数</i></div>
            <div style="padding: 10px 0;text-align: center; font-weight: bold">
              3000
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="12">
        <div id="main" style="width: 500px; height: 400px"></div>
      </el-col>
      <el-col :span="12">
        <div id="pie" style="width: 500px; height: 400px"></div>
      </el-col>
    </el-row>
  </div>

</template>

<script>
import * as echarts from 'echarts'
export default {
  name: "Home",
  data(){
    return {
      total: 0
    }
  },
  created() {
    this.request.get("/user/total").then(res =>{
      console.log("总和"+ res)
      this.total = res.data
    })
  }
  ,
  mounted() { //页面元素渲染后触发


    // 指定图表的配置项和数据
    var option = {
      title: {
        text: '各季度会员数量统计',
        subtext: '趋势图',
        left: 'center'
      },
      tooltip: {
        trigger: 'item'
      },
      legend: {
        orient: 'vertical',
        left: 'left'
      },
      xAxis: {
        type: 'category',
        data: ["第一季度", "第二季度", "第三季度", "第四季度"]
      },
      yAxis: {
        type: 'value'
      },
      series: [
        {
          data: [],
          type: 'line'
        },
        {
          data: [],
          type: 'bar'
        }
      ]
    };

    var myChart = echarts.init(document.getElementById('main'));
    this.request.get("/echarts/members").then(res => {
      // option.xAxis.data = res.data
      option.series[0].data = res.data
      option.series[1].data = res.data
      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
    })



    //饼图
    var pieOption = {
      title: {
        text: '各季度会员数量统计',
        subtext: '比例图',
        left: 'center'
      },
      tooltip: {
        trigger: 'item'
      },
      legend: {
        orient: 'vertical',
        left: 'left'
      },
      series: [
        {
          name: 'Access From',
          type: 'pie',
          radius: '70%',
          label:{            //饼图图形上的文本标签
            normal:{
              show:true,
              position:'inner', //标签的位置
              textStyle : {
                fontWeight : 300 ,
                fontSize : 14,    //文字的字体大小
                color: "#fff"
              },
              formatter:'{d}%'
            }
          },
          data: [],
          emphasis: {
            itemStyle: {
              shadowBlur: 10,
              shadowOffsetX: 0,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          }
        }
      ]
    };

    var pieDom = document.getElementById('pie');
    var pieChart = echarts.init(pieDom);

    this.request.get("/echarts/members").then(res => {
      pieOption.series[0].data = [
        {name: "第一季度", value: res.data[0]},
        {name: "第二季度", value: res.data[1]},
        {name: "第三季度", value: res.data[2]},
        {name: "第四季度", value: res.data[3]}
      ]
      pieChart.setOption(pieOption)
    })
  }
}
</script>

<style scoped>

</style>