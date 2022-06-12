var gaugeData = [{
    domain: {x:[0,1],y:[0,1]},
    value: 85,
    type:"indicator",
    mode: "gauge+number",
    title: {text:"<b>Machine Learning Acurracy</b><br>Random Forest"},
    gauge:{
      axis:{range: [0,100]},
      bar: {color:"black"},
      steps: [
        {range: [0,20], color: "red"},
        {range: [20,40], color: "orange"},
        {range: [40,60], color: "yellow"},
        {range: [60,80], color: "palegreen"},
        {range: [80,100], color: "green"}
      ]}
    }]
Plotly.newPlot("gauge",gaugeData)