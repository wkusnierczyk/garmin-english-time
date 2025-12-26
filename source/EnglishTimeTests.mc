using Toybox.Application;

import Toybox.Lang;
import Toybox.Test;

using EnglishTime;


const HOUR_TEST_ERROR_TEMPLATE = "getHourWord($1$) returned '$2$', expected '$3$'";
const MINUTES_TEST_ERROR_TEMPLATE = "getMinutesWord($1$) returned '$2$', expected '$3$'";


(:test)
function testGetHourWord(logger as Logger) as Boolean {
    var hours = Application.loadResource(Rez.JsonData.HoursExpected) as Array<String>;
    for (var i = 0; i < hours.size(); ++i) {
        var expected = hours[i] as String;
        var converted = EnglishTime.getHourWord(i) as String;
        if (!converted.equals(expected)) {
            var message = Lang.format(HOUR_TEST_ERROR_TEMPLATE, [i, converted, expected]);
            logger.error(message);
            return false;
        }
    }
    return true;
}

(:test)
function testGetMinutesWord(logger as Logger) as Boolean {
    var minutes = Application.loadResource(Rez.JsonData.MinutesExpected) as Array;
    for (var i = 0; i < minutes.size(); ++i) {
        var expected = minutes[i] as String;
        var converted = EnglishTime.getMinutesWord(i) as String;
        if (!converted.equals(expected)) {
            var message = Lang.format(MINUTES_TEST_ERROR_TEMPLATE,[i, converted, expected]);
            logger.error(message);
            return false;
        }
    }
    return true;
}
