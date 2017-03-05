<script type="text/javascript">
Highcharts.chart('temp-demo', {
  credits: {
      enabled: false
  },
  title: {
    text: '各房间温度变化概览',
    x: -20 //center
  },
  chart: {
    backgroundColor: '#EAEDF1',
    polar: true,
    type: 'line'
  },

  subtitle: {
    text: '',
    x: -20
  },
  xAxis: {
    categories: ['1AM', '3AM', '5AM', '7AM', '9AM', '11AM',
      '1PM', '3AM', '5AM', '7AM', '9AM', '11AM'
    ]
  },
  yAxis: {
    title: {
      text: '温度 (°C)'
    },
    plotLines: [{
      value: 0,
      width: 1,
      color: '#808080'
    }]
  },
  tooltip: {
    valueSuffix: '°C'
  },
  legend: {
    layout: 'vertical',
    align: 'right',
    verticalAlign: 'middle',
    borderWidth: 0
  },
  series: [{
    name: '卧室',
    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
  }, {
    name: '客厅',
    data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
  }, {
    name: '卫生间',
    data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
  }, {
    name: '厨房',
    data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
  }]
});

$(function(){
$('#map-demo').vectorMap({
  map: 'cn_mill',
  zoomMax:"1",
  backgroundColor: "#EAEDF1",
  regionStyle: {
  initial: {
  fill: '#428bca'
  },
  hover: {
  fill: "#fff"
  }
  }
});
});

Highcharts.chart('humi-demo', {
  credits: {
      enabled: false
  },
  title: {
    text: '各房间湿度变化概览',
    x: -20 //center
  },
  chart: {
    backgroundColor: '#EAEDF1',
    polar: true,
    type: 'line'
  },

  subtitle: {
    text: '',
    x: -20
  },
  xAxis: {
    categories: ['1AM', '3AM', '5AM', '7AM', '9AM', '11AM',
      '1PM', '3AM', '5AM', '7AM', '9AM', '11AM'
    ]
  },
  yAxis: {
    title: {
      text: '湿度 (%)'
    },
    plotLines: [{
      value: 0,
      width: 1,
      color: '#808080'
    }]
  },
  tooltip: {
    valueSuffix: '%'
  },
  legend: {
    layout: 'vertical',
    align: 'right',
    verticalAlign: 'middle',
    borderWidth: 0
  },
  series: [{
    name: '卧室',
    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 5.3, 13.9, 4.6]
  }, {
    name: '客厅',
    data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 3.1, 20.1, 14.1, 8.6, 2.5]
  }, {
    name: '卫生间',
    data: [-0.9, 0.6, 3.5, 8.4, 6.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
  }, {
    name: '厨房',
    data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 19.0, 16.6, 14.2, 10.3, 22.7, 4.8]
  }]
});
</script>