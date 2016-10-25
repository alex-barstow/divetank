import React from 'react';
import {Chart} from 'react-google-charts'


const ChartComponent = props => {

  return (
    <div className='row'>
      <Chart
        chartType="ColumnChart"
        data={[
        ["Depth", "Number of Dives", { role: "style" } ],
        ["0-30ft", 5, "#88ACF6"],
        ["31-60ft", 2, "#6E90E5"],
        ["61-90ft", 4, "#5475D4"],
        ["90-130ft", 4, "#3A59C3"],
        ["130ft+", 1, "#203EB2"]
      ]}
        options={{title: 'Experience at Depth',
          hAxis: {title: 'Depth'},
          vAxis: {title: '# of Dives'},
          legend: 'none'}}
        graph_id="ColumnChart"
        width="100%"
        height="400px"
       />
    </div>
  );
};

export default ChartComponent;
