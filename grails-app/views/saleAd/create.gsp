<%@ page import="projet.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

</head>

<body>

<a href="#create-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="create-saleAd" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
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


    <g:form resource="${this.saleAd}" method="POST" enctype="multipart/form-data">

       <fieldset class="form">
           <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
           <div class="container">
               <div class="row justify-content-center">
                   <div class="col-12 col-md-8 col-lg-6 pb-5">


                       <!--Form with header-->

           <form action="mail.php" method="post">
               <div class="card border-primary rounded-0">
                   <div class="card-header p-0">
                       <div class="bg-info text-white text-center py-2">
                           <h5><i class="fa fa-envelope"></i> New SaleAd</h5>
                           <p class="m-0">Enter SaledAd Detail</p>
                       </div>
                   </div>
                   <div class="card-body p-3">
                       <!--Body-->

           <div class="fieldcontain required">
               <label for="title">Title
                   <span class="required-indicator">*</span>
               </label><input type="text" name="title" value="" required="" maxlength="50" id="title">
           </div>

           <div class="fieldcontain required">
               <label for="description">Description
                   <span class="required-indicator">*</span>
               </label><input type="text" name="description" value="" required="" id="description">
           </div>
           <div class="fieldcontain required">
               <label for="price">Price
                   <span class="required-indicator">*</span>
               </label><input type="number decimal" name="price" value="" required="" min="0.0" id="price">
           </div>

               &nbsp
               <b> illustration</b>
               <label><input class="fieldcontain required" type="file"  name="file"  accept="image/png, image/jpeg">
               </label>
               <div class="form-group">
                   <div class="input-group mb-2">
                       <div class="input-group-prepend">
                           &nbsp &nbsp &nbsp
                           <label for="Author">Author Name
                               <span class="required-indicator">*</span>
                           </label>
                           <div class="input-group-text"><i class="fa fa-user text-info"></i>

                               <g:select from="${projet.User.list()}"
                                         name="author" optionKey="id"
                                         optionValue="username" />
                           </div>
                       </div>


                   </div>
                   </div>
               </div>
                   %{-- <select name="author.username" required="" id="author">
                             int i =0
                          <g:each in="${User.list()}">
                              i++
                               <option value=${it.getUsername()}> ${it.getUsername()}</option>

                          </g:each>
            </select>--}%
            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
