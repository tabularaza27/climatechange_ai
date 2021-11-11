# Climate Change AI Happy Hour Series

<h2 id='next-event'></h2>

<img src="/images/happy_hour_banner_cropped.jpg" alt="Banner for CCAI happy hour">

Join us on the **[first](https://www.eventbrite.com/e/ccai-happy-hour-1230pm-et-tickets-161690104455){:target="_blank"} and [third](https://www.eventbrite.com/e/ccai-happy-hour-5pm-et-tickets-161692595907){:target="_blank"} Wednesday of each month** for our regular virtual happy hour events. 

The events aim to provide an informal space for people to network and engage in discussions with others interested in or currently working at the intersection of climate change and machine learning. They are open to all and we hope to see you there!

### First Wednesday
**Time:** 12:30pm - 1:30pm ET <br>
**Sign up:** [https://www.eventbrite.com/e/ccai-happy-hour-1230pm-et-tickets-161690104455](https://www.eventbrite.com/e/ccai-happy-hour-1230pm-et-tickets-161690104455){:target="_blank"}

### Third Wednesday
**Time:** 5pm - 6pm ET <br>
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

  function easternTime(hour, minute, date) {
    return DateTime.fromObject({
        year: date.year,
        month: date.month,
        day: date.day,
        hour: hour,
        minute: minute
    }, {
        zone: 'America/New_York'
    });
  }

  const firstWedsThisMonth = easternTime(12, 30, wednesdaysThisMonth[0]);
  const thirdWedsThisMonth = easternTime(17,  0, wednesdaysThisMonth[2]);
  const firstWedsNextMonth = easternTime(12, 30, wednesdaysNextMonth[0]);
  const firstWedsLink = "https://www.eventbrite.com/e/ccai-happy-hour-1230pm-et-tickets-161690104455";
  const thirdWedsLink = "https://www.eventbrite.com/e/ccai-happy-hour-5pm-et-tickets-161692595907";

  let startTime;
  let eventLink;

  if (today <= firstWedsThisMonth) {
    startTime = firstWedsThisMonth;
    eventLink = firstWedsLink;
  } else if (today <= thirdWedsThisMonth) {
    startTime = thirdWedsThisMonth;
    eventLink = thirdWedsLink;
  } else {
    startTime = firstWedsNextMonth;
    eventLink = firstWedsLink;
  }

  const endTime = startTime.plus({ hours: 1 });

  const dateString = `Wed ${startTime.toFormat('d LLLL')}`;

  function formatTime(t) {
    return t.toFormat('h:mma').toLowerCase()
  }

  function formatRange(t1, t2, zone) {
    return `${formatTime(t1)} - ${formatTime(t2)} ${zone}`;
  }

  let timeString = formatRange(startTime, endTime, 'ET');

  const localTZ = today.zoneName;
  const localTZN = today.toFormat("ZZZZ");
  const eastern = startTime.toFormat("ZZZZ");

  if (localTZN != eastern && localTZN != 'EST' && localTZN != 'EDT') {
    timeString += " / ";
    timeString += formatRange(
        startTime.setZone(localTZ),
        endTime.setZone(localTZ),
        localTZN
    );
  }

  $('#next-event').html(`Next event: ${dateString} @ ${timeString} (signup <a href="${eventLink}" target="_blank">here</a>)`);
});
</script>
