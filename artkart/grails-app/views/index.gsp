<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <content tag="nav">

        <li class="dropdown">
            <sec:ifLoggedIn>
                        Hello ${ sec.loggedInUserInfo(field: 'username')} !
                        <g:link controller="user" action="viewProfile">View Profile</g:link>
                        <g:link controller="logout" action="index">Logout</g:link>
            </sec:ifLoggedIn>
            <sec:ifNotLoggedIn>
                <g:link controller="login" action="auth">Login</g:link>
            </sec:ifNotLoggedIn>
        </li>
    </content>

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to ArtKart</h1>

            <div id="controllers" role="navigation">
                <h2>Available Services:</h2>
                <ul>
                    <li>
                        <g:link controller="item" action="index">Item List</g:link>
                    </li>
                    <sec:ifLoggedIn>
                        <li>
                            <g:link controller="cart" action="show">Go To Cart</g:link>
                        </li>
                    </sec:ifLoggedIn>
                </ul>
            </div>
        </section>
    </div>

</body>
</html>
