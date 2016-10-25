import React from 'react';
import {Chart} from 'react-google-charts';

const ChartComponent = props => {
  let firstRange = props.data.first;
  let secondRange = props.data.second;
  let thirdRange = props.data.third;
  let fourthRange = props.data.fourth;
  let fifthRange = props.data.fifth;
  return (
    <div className='chart'>
      <Chart
        chartType="ColumnChart"
        data={[
        ["Depth Range", "Number of Dives", { role: "style" } ],
        ["0-30", firstRange, "#88ACF6"],
        ["31-60", secondRange, "#6E90E5"],
        ["61-90", thirdRange, "#5475D4"],
        ["90-130", fourthRange, "#3A59C3"],
        ["130+", fifthRange, "#00009C"]
      ]}
        options={{title: 'Experience at Depth',
          hAxis: {title: 'Depth(ft)'},
          vAxis: {title: 'Number of Dives'},
          legend: 'none'}}
        graph_id="ColumnChart"
        width="50%"
        height="450px"
       />
    </div>
  );
};

export default ChartComponent;
