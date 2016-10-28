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
  if (props.dives.length > 0) {
    return (
      <div className='charts'>
      <div className='column large-6'>
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
      options={{title: 'Experience at Various Depths',
      hAxis: {title: 'Depth (ft)'},
      vAxis: {title: 'Number of Dives'},
      legend: 'none'}}
      graph_id="ColumnChart"
      width="100%"
      height="450px"
      />
      </div>
      <div className='column large-6'>
      <Chart
      chartType="ScatterChart"
      rows={lineChartData}
      columns={[
        {
          'type': 'date'
        },
        {
          'type' : 'number'
        }
      ]}
      options={{title: 'Dive Frequency and Depth',
      hAxis: {title: 'Date'},
      vAxis: {title: 'Depth (ft)'},
      legend: 'none'}}
      graph_id="ScatterChart"
      width="100%"
      height="450px"
      />
      </div>
      </div>
    );
  } else {
    return (
      <div className='new-user-message subheader'>
        <h2>You dont have any data yet! Log a dive to start!</h2>
      </div>
    )
  }
};

export default ChartComponent;
