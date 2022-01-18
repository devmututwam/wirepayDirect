
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored="false" %>
<%! int counter; %>

<%--/*********************************************************************--%>
<%--* Original Author: Zulu Iden--%>
<%--* File Creation Date: 15/02/2021--%>
<%--* Development Group: Customs Risk Management--%>
<%--* Description: Risk Management selectivity lanes configurations--%>
<%--* ********************************************************************/--%>

<div class="modal" id="addLane" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document" style="min-width: fit-content;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add Selectivity Lane</h5>
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">
                        <i class="icofont icofont-close"></i>
                    </span>
                </button>
            </div>
            <form action="lanesConfiguration/addLanes"  method="post" id="addLanesForm" enctype="multipart/form-data">
                <span id="add_error3" class="text-danger error"></span>
                <div class="modal-body p-t-0">
                    <div class="row">
                        <div class="col-sm-12 " style="padding-right: 0; padding-left: 0;">

                            <div class="card-block" style="padding-right: 0;padding-left: 15px;">

                                <div class=" form-group">
                                    <div class="col-sm-12">
                                        <label for="laneName" class="col-form-label text-bold"> Name</label>
                                    </div>
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control form-control-sm" id="laneName" name="laneName" required/>
                                    </div>
                                </div>

                                <div class=" form-group">
                                    <div class="col-sm-12">
                                        <label for="description" class="col-form-label text-bold">Brief Description</label>
                                    </div>
                                    <div class="col-sm-12">
                                        <textarea rows="3" class="form-control form-control-sm"  name="description" id="description" >

                                        </textarea>
                                    </div>
                                </div>


                                <div class=" form-group">
                                    <div class="col-sm-12">
                                        <label for="laneName" class="col-form-label text-bold"> Set Priority</label>
                                    </div>
                                    <div class="col-sm-12">
                                        <select class="form-control form-control-sm" id="priority" name="priority" required>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                    </div>
                                </div>


                            </div>
                        </div>

                    </div>
                    <div class="form-group col-sm-12 ">
                        <button type="button" class="btn btn-primary " id="addLaneBtn" ><i class="icofont icofont-save"></i>
                            Add
                        </button>
                        <button type="reset" class="btn btn-danger">
                            <i class="icofont icofont-close"></i>
                            Clear
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


