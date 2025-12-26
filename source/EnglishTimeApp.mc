using Toybox.Application;


class EnglishTimeApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    function getInitialView() {
        return [ new EnglishTimeView() ];
    }

}