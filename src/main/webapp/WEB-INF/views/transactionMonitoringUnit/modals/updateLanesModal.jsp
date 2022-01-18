<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored="false" %>
<%! int counter; %>

<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 2021/02/17
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<div class="modal" id="editLaneModal${status.count}" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document" style="min-width: fit-content;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Lane Configuration</h5>
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                                                              <span aria-hidden="true">
                                                                     <i class="icofont icofont-close"></i>
                                                              </span>
                </button>
            </div>

            <form action="lanesConfiguration/addLanes" method="post" id="updateLaneConfigForm" enctype="multipart/form-data">
                <span id="add_error3" class="text-danger error"></span>
                <div class="modal-body p-t-0">
                    <div class="row">
                        <div class="col-sm-12 "
                             style="padding-right: 0; padding-left: 0;">
                            <div class="card-block" style="padding-right: 0;padding-left: 15px;">
                                <div class=" form-group">
                                    <div class="col-sm-12">
                                        <label for="laneName" class="col-form-label text-bold">Name</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input type="text"
                                               class="form-control form-control-sm" id="laneName"
                                               name="laneName"  required/>
                                    </div>

                                    <div class="col-sm-12">
                                        <label for="description" class="col-form-label text-bold">Description</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input type="text"
                                               class="form-control form-control-sm" id="description"
                                               name="description"  required/>
                                    </div>

                                    <div class="col-sm-12">
                                        <label for="priority" class="col-form-label text-bold">Priority</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input type="text"
                                               class="form-control form-control-sm" id="priority"
                                               name="priority"  required/>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="form-group col-sm-12 ">
                        <input type="hidden" name="editId" value="${SelectivityLanes.id}" id="editId"/>
                        <button type="button" class="btn btn-primary " id="btnupdateLaneBtn"><i class="icofont icofont-save"></i>Update</button>
                        <button type="reset" class="btn btn-danger"><i class="icofont icofont-close"></i>Clear</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
