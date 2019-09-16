$(document).ready(function () {
    $("#first").click();

    var IframeOnClick = {
        resolution: 200,
        iframes: [],
        interval: null,
        Iframe: function() {
            this.element = arguments[0];
            this.cb = arguments[1];
            this.hasTracked = false;
        },
        track: function(element, cb) {
            this.iframes.push(new this.Iframe(element, cb));
            if (!this.interval) {
                var _this = this;
                this.interval = setInterval(function() { _this.checkClick(); }, this.resolution);
            }
        },
        checkClick: function() {
            if (document.activeElement) {
                var activeElement = document.activeElement;
                for (var i in this.iframes) {
                    if (activeElement === this.iframes[i].element) { // user is in this Iframe
                        if (this.iframes[i].hasTracked == false) {
                            this.iframes[i].cb.apply(window, []);
                            this.iframes[i].hasTracked = true;
                        }
                    } else {
                        this.iframes[i].hasTracked = false;
                    }
                }
            }
        }
    };
    IframeOnClick.track(document.getElementById("mainFrame"), function() {
        window.location.href="bookInfo?bookId=1";
    });



    setTimeout(function () { click2(); }, 2000);
    setTimeout(function () { click3(); }, 4000);
    setTimeout(function () { click1(); }, 6000);
    setTimeout(function () { click2(); }, 8000);
    setTimeout(function () { click3(); }, 10000);
    setTimeout(function () { click1(); }, 12000);
    setTimeout(function () { click2(); }, 14000);
    setTimeout(function () { click3(); }, 16000);
    setTimeout(function () { click1(); }, 18000);
    setTimeout(function () { click2(); }, 20000);
    setTimeout(function () { click3(); }, 22000);
    setTimeout(function () { click1(); }, 24000);
    setTimeout(function () { click2(); }, 26000);
    setTimeout(function () { click3(); }, 28000);
    setTimeout(function () { click1(); }, 30000);
    setTimeout(function () { click2(); }, 32000);
    setTimeout(function () { click3(); }, 34000);
    setTimeout(function () { click1(); }, 36000);
    setTimeout(function () { click2(); }, 38000);
    setTimeout(function () { click3(); }, 40000);
    setTimeout(function () { click1(); }, 42000);
    setTimeout(function () { click2(); }, 44000);
    setTimeout(function () { click3(); }, 46000);
    setTimeout(function () { click1(); }, 48000);
    setTimeout(function () { click2(); }, 50000);
    setTimeout(function () { click3(); }, 52000);
    setTimeout(function () { click1(); }, 54000);
    setTimeout(function () { click2(); }, 56000);
    setTimeout(function () { click3(); }, 58000);
    setTimeout(function () { click1(); }, 60000);
    setTimeout(function () { click2(); }, 62000);
    setTimeout(function () { click3(); }, 64000);
    setTimeout(function () { click1(); }, 66000);
    setTimeout(function () { click2(); }, 68000);
    setTimeout(function () { click3(); }, 70000);

    function click1() {
        $("#first").click();
    }
    function click2() {
        $("#second").click();
    }
    function click3() {
        $("#third").click();
    }
});
