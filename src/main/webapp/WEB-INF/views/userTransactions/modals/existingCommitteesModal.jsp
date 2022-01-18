<%--
@author JOSHUA KOSAMU
@Module: Customs Risk Management
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored="false" %>
<%! int counter; %>

<div class="md-modal md-effect-8" id="modal-8">
    <div class="md-content">
        <h3>Created Committees</h3>
        <div>

            <div class="table-responsive">
                <table class="table p-0 cre">
                    <thead>
                    <tr>
                        <th>Committee Name</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Committee 1</td>
                        <td>
                            <button class="btn btn-sm btn-light">Edit</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Committee 2</td>
                        <td>
                            <button class="btn btn-sm btn-light">Edit</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <button type="button" class="btn btn-primary waves-effect md-close">Close</button>
        </div>
    </div>
</div>

<div class="md-overlay"></div>