<%--
  Created by IntelliJ IDEA.
  User: ZULUIDEN
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

<%-- Applicable stations Modal--%>
<div class="modal fade" id="applicableStationsModal" tabindex="-1" role="dialog" style="position:absolute;
overflow:scroll;">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="fa fa-check"></i>Criteria Applicable to </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="modalContent">
                    <c:forEach items="${applicableStations}" var="applicableStations" varStatus="counter1">

                        <button class="accordion form-control " type="button">${applicableStations.stationCode}
                            - ${applicableStations.stationName}</button>

                    </c:forEach>
                </div>
                <!-- put dynamic content for the edit modal here -->
                <div class="approvalServerResponse"></div>
            </div>

            <div class="modal-footer">
                <button class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


<%-- Approval Modal --%>
<div class="modal fade" id="approveModal" tabindex="-1" role="dialog">
    <form method="POST" action="riskmanagement/approveImplementedParameter" enctype="multipart/form-data">
        <div class="modal-dialog modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><i class="fa fa-check"></i> Approve configurations</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="modalContent"></div>

                    <input name="referenceNumber" value="${criteriaRequest.transactionId}" hidden/>
                    <input name="step" value="${step}" hidden/>
                    <input name="action" value="approve" hidden/>
                    <textarea class="form-control"  name="comment" placeholder="Enter comments on approval"></textarea>
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
    </form>
</div>


<%-- Send Back Modal --%>
<div class="modal fade" id="sendBackModal" tabindex="-1" role="dialog">
    <form method="POST" action="riskmanagement/approveImplementedParameter" enctype="multipart/form-data">
        <div class="modal-dialog modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><i class="fa fa-close "></i> Send back Configurations</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="modalContent"></div>
                    <input name="referenceNumber" value="${criteriaRequest.transactionId}" hidden/>
                    <input name="action" value="sendBack" hidden/>
                    <input name="step" value="${step}" hidden/>
                    <input name="pId" value="${processId}" hidden/>
                    <textarea class="form-control"  name="comment"  placeholder="Enter reason for send back"></textarea>
                    <!-- put dynamic content for the edit modal here -->
                    <div class="approvalServerResponse"></div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default btn-sm" data-dismiss="modal">CANCEL</button>
                    <button class="btn btn-danger btn-sm btn-ok" id="rejectConfirmButton" ><i class="fa fa-check"></i> SEND BACK</button>
                </div>
            </div>
        </div>
    </form>
</div>



<%--View Documents Modal --%>
<div class="modal fade" id="viewUploads" tabindex="-1" role="dialog">

    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="fa fa-close "></i>View attachements</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="modalContent"></div>

                <%--display files--%>
                <div class="dt-responsive table-responsive attachmentTableCover col-md-12 mt-5 bg-light hide">
                       <table id="attachmentTable" class="table table-hover table-striped table-bordered nowrap">
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>Document Name</th>
                            <th>Open</th>

                        </tr>
                        </thead>
                        <tbody>
                        <tr class="row_${key}">
                            <td>a</td>
                            <td>b</td>
                            <td>c</td>

                        </tr>
                        </tbody>
                    </table>
                </div>



                <div class="approvalServerResponse"></div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default btn-sm" data-dismiss="modal">CANCEL</button>

            </div>
        </div>
    </div>
    </form>
</div>
