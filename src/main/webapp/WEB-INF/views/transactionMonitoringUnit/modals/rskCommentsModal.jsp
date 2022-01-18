<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 2021/02/22
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false" %>


<div class="modal fade show" id="modal-risk-comments" tabindex="-1" role="dialog" style="z-index: 10000;">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-body">
                <div class="card-block user-box">
                    <div class="p-b-30">
                        <h5 class="text-primary">
                            Comments History
                        </h5>
                        <span class="f-right">
                            <button type="button" class="close p-3" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">
                                    <i class="icofont icofont-close"></i>
                                </span>
                            </button>
                        </span>
                    </div>


                    <div class="view-comments" style="overflow-y: scroll; max-height: 500px;">

                        <c:choose>
                            <c:when test="${not empty comments}">

                                <c:forEach items="${comments}" var="comments" varStatus="counter">
                                    <div class="media m-b-20">
                                        <a class="media-left" href="#">
                                            <c:choose>
                                                <c:when test="${counter.count % 2 == 0}">
                                                    <img class="media-object img-circle m-r-20"
                                                         src="assets/images/avatar-4.png"
                                                         alt="Generic placeholder image">
                                                </c:when>
                                                <c:otherwise>
                                                    <img class="media-object img-circle m-r-20"
                                                         src="assets/images/avatar-2.png"
                                                         alt="Generic placeholder image">
                                                </c:otherwise>
                                            </c:choose>
                                        </a>
                                        <div class="media-body b-b-muted social-client-description">
                                            <div class="chat-header">${comments.username}<span
                                                    class="text-muted"><fmt:formatDate value="${comments.createdDate}"
                                                                                       pattern="dd/MM/yyyy | hh:mm:ss"/></span>
                                            </div>
                                            <p class="text-muted">${comments.rskComment}</p>
                                            <label class="label label-inverse-primary">STEP: ${comments.step}</label>
                                            <label class="label label-inverse-primary">ACTION PERFORMED: ${comments.action}</label>
                                        </div>
                                    </div>
                                </c:forEach>

                            </c:when>
                            <c:otherwise>
                                <p>No Comments</p>
                            </c:otherwise>
                        </c:choose>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>