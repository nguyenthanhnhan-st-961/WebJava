/************* chart 1********* */
const xValues1 = ["iPhone 13", "iPhone 12", "iPhone 11", "iPhone XR"];
const yValues1 = [55, 49, 35, 33];
const barColors1 = '#F5DF4D';

new Chart("chart1", {
    type: "bar",
    data: {
    labels: xValues1,
    datasets: [{
        backgroundColor: barColors1,
        data: yValues1,
        hoverBorderWidth: 1,
        hoverBorderColor: '#000'
    }]
    },
    options:{
        title: {
            display: true,
            text: 'Điện Thoại iPhone Đã Bán',
            fontSize: 14,
        },
        legend: {
            display: false
        }
    }
});
/************* chart 2********* */
const xValues2 = ["Samsung A32", "Samsung A52", "Samsung Z", "Samsung S21"];
const yValues2 = [34, 60, 12, 46];
const barColors2 = '#0072B5';

new Chart("chart2", {
    type: "bar",
    data: {
    labels: xValues2,
    datasets: [{
        backgroundColor: barColors2,
        data: yValues2,
        hoverBorderWidth: 1,
        hoverBorderColor: '#000'
    }]
    },
    options:{
        title: {
            display: true,
            text: 'Điện Thoại Samsung Đã Bán',
            fontSize: 14,
        },
        legend: {
            display: false
        }
    }
});
/************* chart 3********* */
const xValues3 = ["OPPO Reno6", "OPPO A95", "OPPO Reno4", "OPPO A94"];
const yValues3 = [75, 54, 22, 33];
const barColors3 = '#A0DAA9';

new Chart("chart3", {
    type: "bar",
    data: {
    labels: xValues3,
    datasets: [{
        backgroundColor: barColors3,
        data: yValues3,
        hoverBorderWidth: 1,
        hoverBorderColor: '#000'
    }]
    },
    options:{
        title: {
            display: true,
            text: 'Điện Thoại Oppo Đã Bán',
            fontSize: 14,
        },
        legend: {
            display: false
        }
    }
});
/************* chart 4********* */
const xValues4 = ["Vivo V23e", "Vivo X70 Pro", "Vivo V21", "Vivo Y72"];
const yValues4 = [80, 40, 53, 34];
const barColors4 = '#E9897E';

new Chart("chart4", {
    type: "bar",
    data: {
    labels: xValues4,
    datasets: [{
        backgroundColor: barColors4,
        data: yValues4,
        hoverBorderWidth: 1,
        hoverBorderColor: '#000'
    }]
    },
    options:{
        title: {
            display: true,
            text: 'Điện Thoại Vivo Đã Bán',
            fontSize: 14,
        },
        legend: {
            display: false
        }
    }
});