# Climate Change AI Happy Hour Series

<h2 id='next-event'></h2>

<img src="/images/happy_hour_banner_cropped.jpg" alt="Banner for CCAI happy hour">

Join us on the **[first](https://www.eventbrite.com/e/ccai-happy-hour-1230pm-et-tickets-161690104455){:target="_blank"} and [third](https://www.eventbrite.com/e/ccai-happy-hour-5pm-et-tickets-161692595907){:target="_blank"} Wednesday of each month** for our regular virtual happy hour events. 

The events aim to provide an informal space for people to network and engage in discussions with others interested in or currently working at the intersection of climate change and machine learning. They are open to all and we hope to see you there!

### First Wednesday
**Time:** 12:30pm - 1:30pm ET / 5:30pm - 6:30pm GMT+1 <br>
**Sign up:** [https://www.eventbrite.com/e/ccai-happy-hour-1230pm-et-tickets-161690104455](https://www.eventbrite.com/e/ccai-happy-hour-1230pm-et-tickets-161690104455){:target="_blank"}

### Third Wednesday
**Time:** 5pm - 6pm ET / 10pm - 11pm GMT+1 <br>
**Sign up:** [https://www.eventbrite.com/e/ccai-happy-hour-5pm-et-tickets-161692595907](https://www.eventbrite.com/e/ccai-happy-hour-5pm-et-tickets-161692595907){:target="_blank"}

<script src="https://cdn.jsdelivr.net/npm/luxon@1.23.0/build/global/luxon.min.js"></script>
<script>
$(document).ready(function() {
  const DateTime = luxon.DateTime;

  const today = DateTime.local().startOf('day');

  const firstOfThisMonth = today.startOf('month');
  const firstOfNextMonth = firstOfThisMonth.plus({ months: 1 });

  const wednesdaysThisMonth = [];
  let t = firstOfThisMonth;
  while (t < firstOfNextMonth) {
    if (t.weekday == 3) {
        wednesdaysThisMonth.push(t);
    }
    t = t.plus({ days: 1 });
  }

  const wednesdaysNextMonth = [];
  while (true) {
    if (t.weekday == 3) {
        wednesdaysNextMonth.push(t);
        break;
    }
    t = t.plus({ days: 1 });
  }

  const firstWedsThisMonth = wednesdaysThisMonth[0];
  const thirdWedsThisMonth = wednesdaysThisMonth[2];
  const firstWedsNextMonth = wednesdaysNextMonth[0];

  let date = undefined;
  let time = undefined;

  if (today <= firstWedsThisMonth) {
    date = `Wed ${firstWedsThisMonth.toFormat('d LLLL')}`;
    time = "12:30pm - 1:30pm ET / 5:30pm - 6:30pm GMT+1";
  } else if (today <= thirdWedsThisMonth) {
    date = `Wed ${thirdWedsThisMonth.toFormat('d LLLL')}`;
    time = "5pm - 6pm ET / 10pm - 11pm GMT+1";
  } else {
    date = `Wed ${firstWedsNextMonth.toFormat('d LLLL')}`;
    time = "12:30pm - 1:30pm ET / 5:30pm - 6:30pm GMT+1";
  }

  $('#next-event').text(`Next event: ${date} @ ${time} (signup link below)`);
});
</script>
