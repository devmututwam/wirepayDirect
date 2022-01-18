<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 2021/02/21
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored="false" %>
<%! int counter; %>

<%-- Approval Modal --%>
<div class="modal fade" id="approveModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="fa fa-check"></i> Approve Request?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="modalContent"></div>
                <br/>
                <br/>

                <input type="hidden" id="applicationReferenceNumber" name="applicationReferenceNumber" value="">
                <input type="hidden" id="applicationName" name="applicationName" value="<c:out value="${applicationName}"></c:out>">
                <!-- put dynamic content for the edit modal here -->
                <div class="approvalServerResponse"></div>
            </div>

            <div class="modal-footer">
                <button class="btn btn-default btn-sm" data-dismiss="modal">CANCEL</button>
                &nbsp;&nbsp;
                <button class="btn btn-success btn-sm btn-ok" id="approveConfirmButton" ><i class="fa fa-check"></i> APPROVE</button>
            </div>
        </div>
    </div>
</div>


<%-- Reject Modal --%>
<div class="modal fade" id="rejectModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="fa fa-check"></i> Approve Application</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="modalContent"></div>

                <br/>
                <br/>

                <input type="hidden" id="applicationReferenceNumberReject" name="applicationReferenceNumberReject" value="">
                <input type="hidden" id="applicationNameReject" name="applicationNameReject" value="<c:out value="${applicationName}"></c:out>">
                <textarea class="form-control"  id="rejetionReason" placeholder="Enter reason for rejection"></textarea>
                <!-- put dynamic content for the edit modal here -->
                <div class="approvalServerResponse"></div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default btn-sm" data-dismiss="modal">CANCEL</button>
                <button class="btn btn-success btn-sm btn-ok" id="rejectConfirmButton" ><i class="fa fa-check"></i> REJECT</button>
            </div>
        </div>
    </div>
</div>