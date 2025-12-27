using Toybox.WatchUi;


class EnglishTimeView extends WatchUi.WatchFace {

    function initialize() {
        WatchFace.initialize();
    }

    function onLayout(dc) {
        setLayout(Rez.Layouts.WatchFace(dc));
    }

    function onUpdate(dc) {

        var clockTime = System.getClockTime();
        var hour = clockTime.hour;
        var minutes = clockTime.min;

        // For debugging only
        hour = 12;
        minutes = 0;

        var hourString = EnglishTime.getHourWord(hour);
        var minutesString = EnglishTime.getMinutesWord(minutes);

        // For debugging only: widest hour and minutes string
        // hourWord = "twelve";
        // minutesWord = "twenty seven";
        
        var hourView = View.findDrawableById(HOUR_LAYOUT_ID) as WatchUi.Text;
        var minutesView = View.findDrawableById(MINUTES_LAYOUT_ID) as WatchUi.Text;

        hourView.setText(hourString);
        minutesView.setText(minutesString);

        View.onUpdate(dc);

    }

}