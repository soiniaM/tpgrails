<%@ page import="projet.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<a href="#edit-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="edit-saleAd" class="content scaffold-edit" role="main">
    <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.saleAd}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.saleAd}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form resource="${this.saleAd}" method="PUT">
        <g:hiddenField name="version" value="${this.saleAd?.version}"/>
        <fieldset class="form">
            %{--                    <f:all bean="saleAd"/>--}%
            <div class="fieldcontain required">
                <label for="title">Title
                    <span class="required-indicator">*</span>
                </label>
                <input type="text" name="title" value="${saleAd.title}" required="" maxlength="50" id="title">
            </div>

            <div class="fieldcontain required">
                <label for="description">Description
                    <span class="required-indicator">*</span>
                </label>
                <input type="text" name="description" value="${saleAd.description}" required="" id="description">
            </div>

            <div class="fieldcontain required">
                <label for="price">Price
                    <span class="required-indicator">*</span>
                </label>
                <input type="text" name="price" value="${saleAd.price}" required="" id="price">
            </div>

            <div class="fieldcontain required">
                <label for="author">Author
                    <span class="required-indicator">*</span>
                </label>
                <g:select from="${projet.User.list()}"
                          name="author" optionKey="id"
                          optionValue="username" value="${saleAd.author.id}"/>
            </div>
            <div class="fieldcontain required">
                <label for="illustrations">Illustrations
                    <span class="required-indicator">*</span>
                </label>
                <g:each in="${saleAd.illustrations}" var="illustration">
                    <g:link controller="illustration" action="delete" id="${illustration.id}">
                        <asset:image src="${illustration.filename}"/>
                    </g:link>
                </g:each>
            </div>

            <div class="fieldcontain required">
                <label for="addIllustrations">Add illustrations
                    <span class="required-indicator">*</span>
                </label>
                <input type="file" name="file" >
            </div>


        </fieldset>
        <fieldset class="buttons">
            <input class="save" type="submit"
                   value="${message(code: 'default.button.update.label', default: 'Update')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
