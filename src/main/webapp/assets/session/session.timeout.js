$(document).ready(function () {
    let context_path = $("input[name=Root]").val();
    let $body = $('body');
    let sessionModal = `<div class="modal fade" id="inactivity-modal" tabindex="-1" data-table-id="x" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-lg" role="document" style="max-width: 50%;">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-center" style="width:100%">Inactive Session</h5>
            </div>
            <div class="modal-body p-b-0">
                <h6 class="text-center mt-5">Your account has been inactive for some time. Your session will expire in</h6>
                <div class="timer-container">
                    <div class="setters">
                        <div class="minutes-set">
                            <button class="d-none" data-setter="minutes-plus">+</button>
                            <button class="d-none" data-setter="minutes-minus">-</button>
                        </div>
                        <div class="seconds-set">
                            <button class="d-none" data-setter="seconds-plus">+</button>
                            <button class="d-none" data-setter="seconds-minus">-</button>
                        </div>
                    </div>
                    <div class="circle">
                        <svg width="300" viewBox="0 0 220 220" xmlns="http://www.w3.org/2000/svg">
                            <g transform="translate(110,110)">
                                <circle r="100" class="e-c-base" />
                                <g transform="rotate(-90)">
                                    <circle r="100" class="e-c-progress" />
                                    <g id="e-pointer">
                                        <circle cx="100" cy="0" r="0" class="e-c-pointer" />
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </div>
                    <div class="controlls">
                        <div class="display-remain-time">00:30</div>
                        <button class="play d-none" id="pause"></button>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-danger mr-2" data-dismiss="modal" id="pop-up-sign-out">Log Out</button>
                <button type="button" class="btn btn-outline-success" data-dismiss="modal" id="pop-up-continue">Stay Connected</button>
            </div>
        </div>
    </div>
</div>`;

    $body.append(sessionModal);
    var _intervals = null;
    /*   let clearInterval = function(id, key) {
           // In case of being called by clearAllIntervals()
           id = key || id;
           if(this._intervals[id]) {
               // Clear the interval
               this._intervals[id].cancel();
               // Clear from tracker
               delete this._intervals[id];
           }
       };
       let setInterval = function(msec, request) {
           let x = Y.later(msec, this, this.sendRequest, [ request ], true);
           this._intervals[x.id] = x;
           // First call happens immediately, but async
           Y.later(0, this, this.sendRequest, [request]);
           return x.id;
       };*/
    // Inactivity pop-up
    window.COUNT_DOWN_TIME_MINUTES = 5 * 60; // 5 minutes
    window.POP_UP_TIME_MILLISECONDS = 8 * 60 * 1000; // 8 minutes
    window.sessionInactiveSeconds = window.POP_UP_TIME_MILLISECONDS;
    window.POLLING_INTERVAL_MILLISECONDS = 60 * 1000; // 30 seconds
    window.refreshSession = false;
    window.isTimerVisible = false;

    window.intervalFunction = setInterval(function () {
        window.sessionInactiveSeconds = window.sessionInactiveSeconds - window.POLLING_INTERVAL_MILLISECONDS;
        if (window.sessionInactiveSeconds <= 0) {
            // window.refreshSession = true;
            window.showInactivityPopUp();
        }
        if (!!window.refreshSession) {
            window.getSessionStatus();
        }
    }, POLLING_INTERVAL_MILLISECONDS);

    // reset inactivity session
    $body.on('change', 'input,select,textarea', function () {
        window.refreshSession = true;
    });

    $('#pop-up-sign-out').on('click', function () {
        window.isTimerVisible = false;
        clearInterval(window.intervalTimer);
        window.logoutUser();
    });
    $('#pop-up-continue').on('click', function () {
        window.refreshSession = true;
        window.isTimerVisible = false;
        clearInterval(window.intervalTimer);
        window.getSessionStatus();
    });
    window.showInactivityPopUp = function () {
        if (!window.isTimerVisible) {
            $("#inactivity-modal").modal();
            window.timer(window.COUNT_DOWN_TIME_MINUTES, window.logoutUser);
            window.isTimerVisible = true;
        }
    }
    window.logoutUser = function () {
        auth.sign_out(context_path + '/sign_out', context_path);
    };
    window.getSessionStatus = function () {
        console.log("Get Session Status");
        window.showLoader = false;
        $.ajax({
            type: 'POST',
            url: context_path + "/getSessionStatus",
            cache: false,
            complete: function (result) {
                window.showLoader = false;
                window.sessionInactiveSeconds = window.POP_UP_TIME_MILLISECONDS;
                window.refreshSession = false;
                $("#inactivity-modal").modal('hide');
            }
        });
    }

    /* =================================================================================== */
    //circle start
    window.timerProgressBar = document.querySelector('.e-c-progress');
    window.timerPointer = document.getElementById('e-pointer');
    window.timerLength = Math.PI * 2 * 100;

    timerProgressBar.style.strokeDasharray = timerLength;

    window.update = function (value, timePercent) {
        // console.log("Update");
        timerProgressBar.style.strokeDashoffset = -timerLength - timerLength * value / (timePercent);
        timerPointer.style.transform = `rotate(${360 * value / (timePercent)}deg)`;
    };

    //circle ends
    window.displayOutput = document.querySelector('.display-remain-time');
    window.setterBtns = document.querySelectorAll('button[data-setter]');
    window.intervalTimer = 0;
    window.timeLeft = 0;
    window.wholeTime = 5 * 60; // manage this to set the whole time
    window.isStarted = false;

    window.changeWholeTime = function (seconds) {
        if ((window.wholeTime + seconds) > 0) {
            window.wholeTime += seconds;
            window.update(window.wholeTime, window.wholeTime);
        }
    };

    window.timer = function (seconds, callback) { //counts time, takes seconds
        let remainTime = Date.now() + (seconds * 1000);
        window.displayTimeLeft(seconds);

        window.intervalTimer = setInterval(function () {
            console.log("Set Interval");
            window.timeLeft = Math.round((remainTime - Date.now()) / 1000);
            if (window.timeLeft < 0) {
                clearInterval(window.intervalTimer);
                //window.isStarted = false;
                //window.displayTimeLeft(window.wholeTime);
                if (!!callback) {
                    callback();
                }
                return;
            }
            window.displayTimeLeft(window.timeLeft);
        }, 1000);
    };
    window.displayTimeLeft = function (timeLeft) {
        // console.log("Calling Display Time Left");
        let minutes = Math.floor(timeLeft / 60);
        let seconds = timeLeft % 60;
        window.displayOutput.textContent = `${minutes < 10 ? '0' : ''}${minutes}:${seconds < 10 ? '0' : ''}${seconds}`;
        window.update(timeLeft, window.wholeTime);
    };
    window.update(window.wholeTime, window.wholeTime); //refreshes progress bar
    window.displayTimeLeft(window.wholeTime);
    /* =================================================================================== */

});