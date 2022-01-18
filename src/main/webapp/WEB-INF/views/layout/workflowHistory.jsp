<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .workflow-history__container {
        position: fixed;
        width: 50%;
        min-width: 800px;
        height: 100%;
        right: 0;
        bottom: 0;
        z-index: 100;
    }

    .workflow-history__container.--off-view {
        transform: translateX(10000px);
    }

    .workflow-history {
        height: 100%;
        position: sticky;
    }

    .workflow-history__inner-container {
        position: absolute;
        height: 70%;
        width: calc(100% - 50px);
        bottom: 70px;
        right: 30px;
        border-radius: 3%;
        padding: 5%;
        -webkit-box-shadow: -8px 10px 30px 8px rgba(194, 194, 194, 1);
        -moz-box-shadow: -8px 10px 30px 8px rgba(194, 194, 194, 1);
        box-shadow: -8px 10px 30px 8px rgba(194, 194, 194, 1);
        background-color: white;
    }

    .workflow-history__timeline-container {
        height: 100%;
        display: flex;
        flex-direction: column;
    }

    .workflow-history__header {
        padding-bottom: 3%;
    }

    .workflow-history__timeline {
        flex-grow: 1;
        padding: 30px 0;
        overflow-y: auto;
    }

    .workflow-history__timeline--component {
        display: flex;
        justify-content: center;
        align-items: center;
        border-left: 3px solid #00477f;
        margin-left: 10px;

    }

    .workflow-history__timeline--component:first-child {
        border-radius: 1px 1px 0 0;
    }

    .workflow-history__timeline--component:last-child {
        border-radius: 0 0 1px 1px;
    }

    .timeline-component__marker {
        background: white;
        border-radius: 50%;
        border: 3px solid #00477f;
        width: 15px;
        height: 15px;
        z-index: 101;
        transform: translateX(-9px);
        flex-shrink: 0;
    }

    .timeline-component__date {
        width: 70px;
        flex-shrink: 0;
        font-size: 0.9em;
    }

    .workflow-history__subheader {
        margin: 0 1% 0 0;
        padding: 1em;
        border: 3px solid #00477f;
        border-radius: 10px;
    }

    .timeline-component__body {
        flex-grow: 1;
        margin: 2% 3% 5% 3%;
        border-radius: 3%;
        padding: 1em;
        display: flex;
        flex-direction: column;
        background-color: #f5f5f5;
    }

    .timeline-component__body--content {
        padding: 1em 0;
        text-align: justify;
        font-size: 0.9em;
    }

    .timeline-component__body--user {
        margin-top: .5em;
    }

    .timeline-component__body--user:before {
        content: "\2014 \00A0";
    }

    .workflow-history__footer {
        padding-top: 3%;
    }

    .workflow-history__toggle {
        position: absolute;
        display: flex;
        justify-content: center;
        align-items: center;
        bottom: 20px;
        right: 30px;
        box-shadow: 0 6px 10px 0 #666;
        border-radius: 50%;
    }


    .workflow-history__toggle:hover {
        box-shadow: 0 6px 14px 0 #666;
        transform: scale(1.05);
    }

    .workflow-history__toggle.--in-view {
        transform: translateX(-10000px);
    }


</style>
<div class="workflow-history__container --off-view">
    <div class="workflow-history">
        <div class="workflow-history__inner-container animate__animated">
            <div class="workflow-history__timeline-container">
                <div class="workflow-history__header">
                    <h5>Workflow Comment History</h5>
                </div>
                <div class="workflow-history__timeline">
                    {history}
                </div>
                <div class="workflow-history__footer"></div>
            </div>
        </div>
        <div class="workflow-history__toggle --in-view d-none">
            <button class="btn btn-lg btn-info btn-icon"
                    title="Toggle Workflow Comment History">
                <i class="icofont icofont-list m-0"></i>
            </button>
        </div>
    </div>
</div>
