import React from 'react';
import {Chart} from 'react-google-charts'


const ChartComponent = props => {

  return (
    <div className='row'>
      <Chart
        chartType="ColumnChart"
        data={[
        ["Element", "Density", { role: "style" } ],
        ["Copper", 8.94, "#b87333"],
        ["Silver", 10.49, "silver"],
        ["Gold", 19.30, "gold"],
        ["Platinum", 21.45, "color: #e5e4e2"]
      ]}
        options={{title: '# of Dives at a given depth',
          hAxis: {title: 'Depth', minValue: 0, maxValue: 15},
          vAxis: {title: '# of Dives', minValue: 0, maxValue: 15},
          legend: 'none'}}
        graph_id="ColumnChart"
        width="100%"
        height="400px"
       />
    </div>
  );
};

export default ChartComponent;
