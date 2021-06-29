<!DOCTYPE html>
<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>

<div id="show-saleAd" class="content scaffold-show" role="main">
    <h1>Detail sur l'annonce </h1>
        <div class="col-md-3">
            <div class="contact-info">
                <ol class="property-list saleAd">
                    <img src="/assets/contact-image.png" atl="image" width="200" heigh="200">
                    <li class="fieldcontain">
                <h4>  <div class="property-value" aria-labelledby="title-label">${saleAd.title} </div>
                </h4>
                </li>
                <li class="fieldcontain">
                    <h4> <div class="property-value" aria-labelledby="description-label">${saleAd.description}</div></h4>
                </li>
                <li class="fieldcontain">
                    <h4> <span id="price-label" class="property-label">PriX:</span></h4>
                        <h4>  <div class="property-value" aria-labelledby="price-label">${saleAd.price}</div></h4>
                </li>
    </ol>
</div>
</div>
    <label class="control-label col-sm-2">Illustrations</label>

                    <g:each in="${saleAd.illustrations}" var="illustration">
                        <li><img src="../../assets/${illustration.filename}" alt=""> </li>
                    </g:each>

<br><br><br><br><br><br><br><br><br>


    <g:form resource="${this.saleAd}" method="DELETE">
    <fieldset class="buttons">
        <g:link class="edit" action="edit" resource="${this.saleAd}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </fieldset>
</g:form>
</div>
</body>
</html>
