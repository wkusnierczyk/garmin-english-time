using Toybox.Application;

import Toybox.Lang;


// Number words
const HOURS = Application.loadResource(Rez.JsonData.Hours) as Array;
const ONES = Application.loadResource(Rez.JsonData.Ones) as Array;
const TEENS = Application.loadResource(Rez.JsonData.Teens) as Array;
const TENS = Application.loadResource(Rez.JsonData.Tens) as Array;
const MINUTES = Application.loadResource(Rez.JsonData.Minutes) as Dictionary;

const SEPARATOR = Application.loadResource(Rez.Strings.Separator) as String;

const MINUTES_ZERO_ID = "Zero";
const MINUTES_UNIT_ID = "Unit";


// Layouts
const HOUR_LAYOUT_ID = "HourLayout";
const MINUTES_LAYOUT_ID = "MinutesLayout";
