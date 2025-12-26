using Toybox.Application;

import Toybox.Lang;


module EnglishTime {

    function getHourWord(hour as Integer) as String {
        var h = hour % 12;
        return HOURS[h];
    }

    function getMinutesWord(minutes as Integer) as String {
        if (minutes == 0) {
            return MINUTES[MINUTES_ZERO_ID];
        } else if (minutes < 10) {
            return MINUTES[MINUTES_UNIT_ID] + SEPARATOR + ONES[minutes - 1];
        } else if (minutes < 20) {
            return TEENS[minutes - 10];
        } else {
            var tens = minutes / 10;
            var ones = minutes % 10;
            var minutesWord = TENS[tens - 2];
            if (ones > 0) {
                minutesWord += SEPARATOR + ONES[ones - 1];
            }
            return minutesWord;
        }
    }

}
