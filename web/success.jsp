<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<!DOCTYPE HTML>
<!--
        Forty by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>It Resume For You!</title>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="assets/css/main.css" />
        <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    </head>
    <body>

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Header -->
            <header id="header" class="alt">
                <a href="" class="logo"><strong>ITResume4U</strong> <span>by Illinois State University</span></a>
                <nav>
                    <a href="#menu">Menu</a>
                </nav>
            </header>

            <!-- Menu -->
            <nav id="menu">
                <ul class="links">
                    <li><a href="changeInformation.jsp">Edit Profile</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </nav>

            <!-- Banner -->
            <section id="banner" class="major">
                <div class="inner">
                    <header class="major">
                        <h1>Welcome <%=session.getAttribute("userid")%></h1>
                    </header>
                    <div class="content">
                        <h2>Please select which template format you would like to use.</h2>
                    </div>
                </div>
            </section>

            <!-- Main -->           
            <div id="main">

                <section id="one" class="tiles">
                    <article id="traditionalRes">
                        <span class="image">
                            <img src="./images/traditional.png" alt="" />
                        </span>
                        <header class="major">
                                <h3>Traditional</h3>
                                <p>Click here to create a resume with a Traditional layout.</p>
                        </header>
                    </article>
                    <article id="modernRes">
                        <span class="image">
                            <img src="./images/modern.png" alt="" />
                        </span>
                        <header class="major">
                            <h3>Modern</h3>
                            <p>Click here to create a resume with a Modern layout.</p>
                        </header>
                    </article>
                </section>
            </div>

        </div>
      
        <!-- Scripts -->        
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/ie/respond.min.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="assets/js/main.js"></script>

    </body>
</html>
    <script>
            $('article').css('cursor', 'pointer');
            
            $("#traditionalRes").click(function() {
                window.location = "createResume.jsp?type=Traditional";
            });
            
            $("#modernRes").click(function() {
                window.location = "createResume.jsp?type=Modern";
            });  
    </script>

<%
    }
%>