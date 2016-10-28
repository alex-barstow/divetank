import React from 'react';
import {Chart} from 'react-google-charts';

// add onmouseover event, get column and row indeces

const ChartComponent = props => {
  let firstRange = props.columnChart.first;
  let secondRange = props.columnChart.second;
  let thirdRange = props.columnChart.third;
  let fourthRange = props.columnChart.fourth;
  let fifthRange = props.columnChart.fifth;

  let lineChartData = props.dives.map(dive => {
    let month = dive.date.split("/")[0];
    let day = dive.date.split("/")[1];
    let year = dive.date.split("/")[2];

    let dateString = `${year}-${month}-${day}`;
    let depth = dive.max_depth;

    return (
      [new Date(dateString), depth]
    );
  });

  return (
    <div>
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
      <div className='chart'>
        <Chart
          chartType="ScatterChart"
          rows={lineChartData}
          columns={[
            {
              'type': 'date',
              'label' : 'Date'
            },
            {
              'type' : 'number',
              'label' : 'Depth'
            }
          ]}
          options={{title: 'Dives vs. Time',
            hAxis: {title: 'Date'},
            vAxis: {title: 'Depth'},
            legend: 'none'}}
          graph_id="ScatterChart"
          width="50%"
          height="450px"
         />
      </div>
    </div>
  );
};

export default ChartComponent;
