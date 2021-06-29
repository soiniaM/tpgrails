<!DOCTYPE html>
<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="/assets/css/style.css">


        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-saleAd" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-6 text-center mb-4">
                        </div>
                    </div>
                    <div class="row table-wrap col-md-12">

                            <div class="table-wrap">
                                <table class="table">
                                    <thead class="thead-primary">
                                    <tr>
                                        <th>&nbsp;</th>
                                        <th class="sortable sorted desc">Product</th>
                                        <th>Description</th>
                                        <th>Price</th>
                                        <th>Author Name</th>

                                    </tr>
                                    </thead>
                                    <tbody>


<g:each in="${saleAdList}" >
    <tr class="alert" role="alert">
    <td ass="img">
        <a  href="/saleAd/show/${it.id}">
            <img src="../../assets/${it.illustrations[0].filename}" alt="image" width="50" height="80">
        </a>
    </td>
    <td>
        <span class="email">${it.title} </span>
    </td>
    <td>${it.description} </td>
    <td>${it.price} </td>
    <td>${it.author.username} </td>
</tr>

    </g:each>

                                    </tbody>
                                    </table>
                </div>
                    </div>

            <div class="pagination">
                <g:paginate total="${saleAdCount ?: 0}" />
            </div>
        </div>


    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

    </body>
</html>