<%-- 
    Document   : newcreateresume
    Created on : Apr 24, 2018, 3:37:43 PM
    Author     : Christian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
        Forty by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>Elements - Forty by HTML5 UP</title>
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
            <header id="header">
                <a href="index.html" class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a>
                <nav>
                    <a href="#menu">Menu</a>
                </nav>
            </header>

            <!-- Menu -->
            <nav id="menu">
                <ul class="links">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="landing.html">Landing</a></li>
                    <li><a href="generic.html">Generic</a></li>
                    <li><a href="elements.html">Elements</a></li>
                </ul>
                <ul class="actions vertical">
                    <li><a href="#" class="button special fit">Get Started</a></li>
                    <li><a href="#" class="button fit">Log In</a></li>
                </ul>
            </nav>

            <!-- Main -->
            <div id="main" class="alt">

                <!-- One -->
                <section id="one">
                    <div class="inner">
                        <header class="major">
                            <h1>Create Your Resume</h1>
                        </header>

                        <!-- Elements -->
                        <!-- <h2 id="elements">Elements</h2> -->
                        <div class="row 200%">
                            <div class="6u 12u$(medium)">
                                <!-- Form -->
                                <!-- <h3>Form</h3> -->

                                <form method="post" action="CreateResume">
                                    <div class="row uniform">
                                        <div class="6u 12u$(xsmall)">
                                            First Name: <input type="text" name="FIRSTNAME" value="" placeholder="First Name" />
                                        </div>
                                        <div class="6u 12u$(xsmall)">
                                            Last Name: <input type="text" name="LASTNAME" value="" placeholder="Last Name" />
                                        </div>
                                        <div class="6u 12u$(xsmall)">
                                            Street Address: <input type="text" name="ADDRESS" value="" placeholder="Street Address" />
                                        </div>
                                        <div class="6u 12u$(xsmall)">
                                            City: <input type="text" name="CITY" value="" placeholder="City" />
                                        </div>
                                        <div class="6u 12u$(xsmall)">
                                            Zip Code: <input type="text" name="ZIP" value="" placeholder="Zip Code" />
                                        </div>
                                        <div class="6u$ 12u$(xsmall)">
                                            Email: <input type="email" name="EMAIL" value="" placeholder="Email" />
                                        </div>
                                        <div class="6u$ 12u$(xsmall)">
                                            Phone: <input type="text" name="PHONE" value="" placeholder="Phone" />
                                        </div>
                                        
                                        <input type = "hidden" name ="type" value ="<%=request.getParameter("type")%>">
                                        <!-- Break -->
                                        <!--                                        <div class="12u$">
                                                                                    <div class="select-wrapper">
                                                                                        <select name="demo-category" id="demo-category">
                                                                                            <option value="">- Category -</option>
                                                                                            <option value="1">Manufacturing</option>
                                                                                            <option value="1">Shipping</option>
                                                                                            <option value="1">Administration</option>
                                                                                            <option value="1">Human Resources</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>-->
                                        <div class="12u$">
                                            <h3>Education</h3>
                                        </div>
                                        <!-- Break -->
                                        <div class="6u 12u$(small)">
                                            <input type="radio" name="SCHOOLNAME" id="isu" VALUE="Illinois State University" >
                                            <label for="isu">Illinois State University</label>
                                        </div>
                                        <div class="6u 12u$(small)">
                                            <input type="radio" name="SCHOOLNAME" id="another" VALUE="Another School" >
                                            <label for="another">Another School</label>
                                        </div>
                                        <div class="12u$">
                                            <div class="6u 12u$(small)">University Location: <br>
                                                <input type="radio" name="SCHOOLLOC" id="SCHOOLLOC" VALUE="Bloomington-Normal" >
                                                <label for="SCHOOLLOC">Bloomington-Normal</label>
                                            </div>
                                        </div>
                                        <div class="6u 12u$(small)"> Degree: <br/>
                                            <input type="radio" name="DEGREE" id="DEGREE1" VALUE="Degree of Science" >
                                            <label for="DEGREE1">Degree of Science</label>
                                        </div>
                                        <div class="6u 12u$(small)"><br/>
                                            <input type="radio" name="DEGREE" id="DEGREE2" VALUE="Degree of Business" >
                                            <label for="DEGREE2">Degree of Business</label>
                                        </div>
                                        <div class="6u 12u$(small)"> Major: <br/>
                                            <input type="radio" name="MAJOR" id="majorIS" VALUE="Information Systems" >
                                            <label for="majorIS">Information Systems</label>
                                        </div>
                                        <div class="6u 12u$(small)"><br/>
                                            <input type="radio" name="MAJOR" id="majorBIS" VALUE="Business Information Systems" >
                                            <label for="majorBIS">Business Information Systems</label>
                                        </div>
                                        <div class="3u 12u$(small)"> Grade Level: <br/>
                                            <input type="radio" name="YEAR" id="YEAR1" VALUE="Freshman" >
                                            <label for="YEAR1">Freshman</label>
                                        </div>
                                        <div class="3u 12u$(small)"><br/>
                                            <input type="radio" name="YEAR" id="YEAR2" VALUE="Sophomore" >
                                            <label for="YEAR2">Sophomore </label>
                                        </div>
                                        <div class="3u 12u$(small)"><br/>
                                            <input type="radio" name="YEAR" id="YEAR3" VALUE="Junior" >
                                            <label for="YEAR3">Junior</label>
                                        </div>
                                        <div class="3u 12u$(small)"><br/>
                                            <input type="radio" name="YEAR" id="YEAR4" VALUE="Senior" >
                                            <label for="YEAR4">Senior</label>
                                        </div>
                                        <!-- Break -->
                                        <div class="6u 12u$(small)">
                                            <div class="select-wrapper">
                                                <select name="GRADUATIONDATE" id="GRADUATIONDATE">
                                                    <option value="">- Graduation Semester -</option>
                                                    <option value="Fall">Fall</option>
                                                    <option value="Spring">Spring</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="6u 12u$(small)">
                                            <div class="select-wrapper">
                                                <select name="GRADUATIONYEAR" id="GRADUATIONYEAR">
                                                    <option value="">- Graduation Year -</option>
                                                    <option value="2018">2018</option>
                                                    <option value="2019">2019</option>
                                                    <option value="2020">2020</option>
                                                    <option value="2021">2021</option>
                                                    <option value="2022">2022</option>
                                                    <option value="2023">2023</option>
                                                    <option value="2024">2024</option>
                                                    <option value="2025">2025</option>
                                                    <option value="2026">2026</option>
                                                    <option value="2027">2027</option>
                                                </select>
                                            </div>
                                        </div>
                                        <!-- Break -->
                                        <div class="12u$">
                                            <div class="6u 12u$(small)">Grade Point Average (GPA): <br>
                                                <input type="text" name="GPA" value="" placeholder="GPA (X.XX)" maxlength="4" />
                                            </div>
                                        </div>
                                        <DIV id="coursesIS" class="6u 12u$(small)">
                                            <H3>Please select the courses you would like to include:
                                            </H3>
                                            Courses:
                                            <br>
                                            <INPUT TYPE="checkbox" NAME="168" VALUE="168">IT 168 - Structured
                                            Problem Solving using Java
                                            <br>
                                            <INPUT TYPE="CHECKBOX" NAME="261" VALUE="261">IT 261 - Systems Development
                                            <br>
                                            <INPUT TYPE="CHECKBOX" NAME="262" VALUE="262">IT 262 - Project Management
                                            <br>
                                            <INPUT TYPE="CHECKBOX" NAME="COBOL" VALUE="cobol">IT 272/372 -
                                            Cobol Development
                                            <br>
                                            <INPUT TYPE="CHECKBOX" NAME="363" VALUE="363">IT 363 - Systems Development
                                            <br>
                                            <INPUT TYPE="CHECKBOX" NAME="378" VALUE="378">IT 378 - External
                                            Data Structures (SQL)
                                        </div>

                                        <DIV id="coursesBIS" class="6u 12u$(small)">
                                            <H3>Please select the courses you would like to include:
                                            </H3>
                                            Courses:
                                            <br>
                                            <INPUT TYPE="CHECKBOX" NAME="ACC260" VALUE="ACC260">ACC 260 -
                                            Computer Programming For Business
                                            <br>
                                            <INPUT TYPE="CHECKBOX" NAME="ACC261" VALUE="ACC261">ACC 261 -
                                            Business Systems Analysis
                                            <br>
                                            <INPUT TYPE="CHECKBOX" NAME="ACC362" VALUE="ACC362">ACC 362 -
                                            Advanced Business Systems Analysis
                                            <br>
                                            <INPUT TYPE="CHECKBOX" NAME="ACC366" VALUE="cobol">ACC 366 -
                                            Advanced Business Data Management
                                            <br>
                                            <INPUT TYPE="CHECKBOX" NAME="ACC368" VALUE="363">ACC 368 -
                                            Developing Business Application Systems
                                        </DIV>

                                        <H3>Please select the following technical skills that you would
                                            associate with yourself:
                                        </H3>

                                        <P>

                                        <div id="tableIS" class="6u 12u$(small)">
                                            <TABLE BORDER>

                                                <TR ALIGN=CENTER>
                                                    <TD WIDTH=75> </TD>
                                                    <TD WIDTH=75><B>No Experience</B></TD>
                                                    <TD WIDTH=75><B>Little Experience</B></TD>
                                                    <TD WIDTH=75><B>Well Experienced</B></TD>
                                                    <TD WIDTH=75><B>Very Strong Experience</B></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        Java</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="javaSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="javaSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="javaSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="javaSkill" VALUE="4"></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        SQL</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sqlSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sqlSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sqlSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sqlSkill" VALUE="4"></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        Front-End</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="frontEndSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="frontEndSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="frontEndSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="frontEndSkill" VALUE="4"></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        Cobol</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="cobolSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="cobolSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="cobolSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="cobolSkill" VALUE="4"></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        UML Diagrams</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="umlSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="umlSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="umlSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="umlSkill" VALUE="4"></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        Project Management</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="projectManagementSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="projectManagementSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="projectManagementSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="projectManagementSkill" VALUE="4"></TD>
                                                </TR>

                                            </TABLE>
                                        </DIV>

                                        <div id="tableBIS" class="6u 12u$(small)">
                                            <TABLE BORDER>

                                                <TR ALIGN=CENTER>
                                                    <TD WIDTH=75> </TD>
                                                    <TD WIDTH=75><B>No Experience</B></TD>
                                                    <TD WIDTH=75><B>Little Experience</B></TD>
                                                    <TD WIDTH=75><B>Well Experienced</B></TD>
                                                    <TD WIDTH=75><B>Very Strong Experience</B></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        Visual Basic</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="visualBasicSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="visualBasicSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="visualBasicSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="visualBasicSkill" VALUE="4"></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        SQL</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sqlSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sqlSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sqlSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sqlSkill" VALUE="4"></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        SDLC</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sdlcSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sdlcSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sdlcSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="sdlcSkill" VALUE="4"></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        Cobol</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="cobolSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="cobolSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="cobolSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="cobolSkill" VALUE="4"></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        Agile</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="agileSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="agileSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="agileSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="agileSkill" VALUE="4"></TD>
                                                </TR>

                                                <TR ALIGN=CENTER>
                                                    <TD  ALIGN=LEFT>
                                                        Project Management</TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="projectManagementSkill" VALUE="1"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="projectManagementSkill" VALUE="2"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="projectManagementSkill" VALUE="3"></TD>
                                                    <TD><INPUT TYPE="RADIO" NAME="projectManagementSkill" VALUE="4"></TD>
                                                </TR>

                                            </TABLE>
                                        </DIV>
                                        <!--                                        <div class="6u 12u$(small)">
                                                                                    <input type="checkbox" id="demo-copy" name="demo-copy">
                                                                                    <label for="demo-copy">Email me a copy</label>
                                                                                </div>
                                                                                <div class="6u$ 12u$(small)">
                                                                                    <input type="checkbox" id="demo-human" name="demo-human" checked>
                                                                                    <label for="demo-human">I am a human</label>
                                                                                </div>
                                                                                 Break 
                                                                                <div class="12u$">
                                                                                    <textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
                                                                                </div>
                                                                                 Break 
                                                                                <div class="12u$">
                                                                                    <ul class="actions">
                                                                                        <li><input type="submit" value="Send Message" class="special" /></li>
                                                                                        <li><input type="reset" value="Reset" /></li>
                                                                                    </ul>
                                                                                </div>-->
                                        <div class="jobss" class="6u 12u$(small)">
                                            Job Title: <INPUT TYPE="text" NAME="JOBTITLE" SIZE=40 MAXLENGTH=80>
                                            <br>
                                            Employer: <INPUT TYPE="text" NAME="EMPLOYER" SIZE=40 MAXLENGTH=80>
                                            <br>
                                            City: <INPUT TYPE="text" NAME="JOBCITY" SIZE=40 MAXLENGTH=80>
                                            <br>
                                            State: <INPUT TYPE="text" NAME="JOBSTATE" SIZE=40 MAXLENGTH=80>
                                            <br>
                                            Start Date: <input id="date" type="date" NAME="STARTDATE">
                                            <br>
                                            End Date: <input id="date" type="date" NAME="ENDDATE">
                                            <br>
                                            Description: <TEXTAREA NAME="DESCRIPTION" ROWS="4"  COLS="50">
</TEXTAREA>
<BR>
</div>

<DIV class="addJobs"><BR>
</DIV>
                                        <div class="6u 12u$(small)">
<input type="button" id="addJob" value="Add Another Job"> <input type="button" id="removeJob" value="Remove Last Job">
<BR>
<input type=submit VALUE="Create Resume"> <input type=reset VALUE="Clear values">
                                        </div>>
                                    </div>
                                </form>
                            </div>
<!--                            <div class="6u$ 12u$(medium)">

                                 Buttons 
                                <h3>Buttons</h3>
                                <ul class="actions">
                                    <li><a href="#" class="button special">Special</a></li>
                                    <li><a href="#" class="button">Default</a></li>
                                </ul>
                                <ul class="actions">
                                    <li><a href="#" class="button big">Big</a></li>
                                    <li><a href="#" class="button">Default</a></li>
                                    <li><a href="#" class="button small">Small</a></li>
                                </ul>
                                <ul class="actions">
                                    <li><a href="#" class="button special big">Big</a></li>
                                    <li><a href="#" class="button special">Default</a></li>
                                    <li><a href="#" class="button special small">Small</a></li>
                                </ul>
                                <ul class="actions fit">
                                    <li><a href="#" class="button special fit">Fit</a></li>
                                    <li><a href="#" class="button fit">Fit</a></li>
                                </ul>
                                <ul class="actions fit small">
                                    <li><a href="#" class="button special fit small">Fit + Small</a></li>
                                    <li><a href="#" class="button fit small">Fit + Small</a></li>
                                </ul>
                                <ul class="actions">
                                    <li><a href="#" class="button special icon fa-search">Icon</a></li>
                                    <li><a href="#" class="button icon fa-download">Icon</a></li>
                                </ul>
                                <ul class="actions">
                                    <li><span class="button special disabled">Special</span></li>
                                    <li><span class="button disabled">Default</span></li>
                                </ul>

                                 Form 
                                <h3>Form</h3>

                                <form method="post" action="#">
                                    <div class="row uniform">
                                        <div class="6u 12u$(xsmall)">
                                            <input type="text" name="demo-name" id="demo-name" value="" placeholder="Name" />
                                        </div>
                                        <div class="6u$ 12u$(xsmall)">
                                            <input type="email" name="demo-email" id="demo-email" value="" placeholder="Email" />
                                        </div>
                                         Break 
                                        <div class="12u$">
                                            <div class="select-wrapper">
                                                <select name="demo-category" id="demo-category">
                                                    <option value="">- Category -</option>
                                                    <option value="1">Manufacturing</option>
                                                    <option value="1">Shipping</option>
                                                    <option value="1">Administration</option>
                                                    <option value="1">Human Resources</option>
                                                </select>
                                            </div>
                                        </div>
                                         Break 
                                        <div class="4u 12u$(small)">
                                            <input type="radio" id="demo-priority-low" name="demo-priority" checked>
                                            <label for="demo-priority-low">Low</label>
                                        </div>
                                        <div class="4u 12u$(small)">
                                            <input type="radio" id="demo-priority-normal" name="demo-priority">
                                            <label for="demo-priority-normal">Normal</label>
                                        </div>
                                        <div class="4u$ 12u$(small)">
                                            <input type="radio" id="demo-priority-high" name="demo-priority">
                                            <label for="demo-priority-high">High</label>
                                        </div>
                                         Break 
                                        <div class="6u 12u$(small)">
                                            <input type="checkbox" id="demo-copy" name="demo-copy">
                                            <label for="demo-copy">Email me a copy</label>
                                        </div>
                                        <div class="6u$ 12u$(small)">
                                            <input type="checkbox" id="demo-human" name="demo-human" checked>
                                            <label for="demo-human">I am a human</label>
                                        </div>
                                         Break 
                                        <div class="12u$">
                                            <textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
                                        </div>
                                         Break 
                                        <div class="12u$">
                                            <ul class="actions">
                                                <li><input type="submit" value="Send Message" class="special" /></li>
                                                <li><input type="reset" value="Reset" /></li>
                                            </ul>
                                        </div>
                                    </div>
                                </form>

-->          
                         
                                    <div class="4u"><span class="image fit"><img src="images/modern.png" alt="" /></span></div>
                                
<!--
                                <h4>Left &amp; Right</h4>
                                <p><span class="image left"><img src="images/pic09.jpg" alt="" /></span>Lorem ipsum dolor sit accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget tempus vestibulum ante ipsum primis in faucibus magna blandit adipiscing eu felis iaculis.</p>
                                <p><span class="image right"><img src="images/pic10.jpg" alt="" /></span>Lorem ipsum dolor sit accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget tempus vestibulum ante ipsum primis in faucibus magna blandit adipiscing eu felis iaculis.</p>

                                 Box 
                                <h3>Box</h3>
                                <div class="box">
                                    <p>Felis sagittis eget tempus primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Magna sed etiam ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus lorem ipsum.</p>
                                </div>

                                 Preformatted Code 
                                <h3>Preformatted</h3>
                                <pre><code>i = 0;

while (!deck.isInOrder()) {
    print 'Iteration ' + i;
    deck.shuffle();
    i++;
}

print 'It took ' + i + ' iterations to sort the deck.';
</code></pre>

                            </div>-->
                        </div>

                    </div>
                </section>-->

            </div>

<!--             Contact 
            <section id="contact">
                <div class="inner">
                    <section>
                        <form method="post" action="#">
                            <div class="field half first">
                                <label for="name">Name</label>
                                <input type="text" name="name" id="name" />
                            </div>
                            <div class="field half">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" />
                            </div>
                            <div class="field">
                                <label for="message">Message</label>
                                <textarea name="message" id="message" rows="6"></textarea>
                            </div>
                            <ul class="actions">
                                <li><input type="submit" value="Send Message" class="special" /></li>
                                <li><input type="reset" value="Clear" /></li>
                            </ul>
                        </form>
                    </section>
                    <section class="split">
                        <section>
                            <div class="contact-method">
                                <span class="icon alt fa-envelope"></span>
                                <h3>Email</h3>
                                <a href="#">information@untitled.tld</a>
                            </div>
                        </section>
                        <section>
                            <div class="contact-method">
                                <span class="icon alt fa-phone"></span>
                                <h3>Phone</h3>
                                <span>(000) 000-0000 x12387</span>
                            </div>
                        </section>
                        <section>
                            <div class="contact-method">
                                <span class="icon alt fa-home"></span>
                                <h3>Address</h3>
                                <span>1234 Somewhere Road #5432<br />
                                    Nashville, TN 00000<br />
                                    United States of America</span>
                            </div>
                        </section>
                    </section>
                </div>
            </section>

             Footer 
            <footer id="footer">
                <div class="inner">
                    <ul class="icons">
                        <li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
                        <li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
                        <li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
                        <li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
                        <li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
                    </ul>
                    <ul class="copyright">
                        <li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
                    </ul>
                </div>
            </footer>-->

        </div>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="assets/js/main.js"></script>

        <SCRIPT>
            $(document).ready(function () {
//-----------------------ADD/REMOVE JOBS---------------------------------------
                var numberResumes = 1;
                var count = 1;

                document.getElementById("addJob").onclick = function () {
                    if (numberResumes < 3) {
                        var clone = $(".jobss:first").clone();
                        clone.find(':input').val('');
                        clone.find(":input").attr("name", function (i, val) {
                            return val + count;
                        });
                        var text = $("<h3></h3>");
                        text.html("Please Provide Your Job Experience:");
                        text.appendTo(".addJobs");
                        clone.appendTo(".addJobs");
                        count++;
                        numberResumes++;
                    } else {
                        var error = $("<h2></h2>");
                        error.html("You can maximum have 3 job experiences");
                        error.appendTo(".addJobs");
                    }
                }
                document.getElementById("removeJob").onclick = function () {
                    $(".jobss:last").remove();
                    $("h3:last").remove();
                    $("h2:last").remove();
                    numberResumes--;
                }

//-----------------------------COURSES---------------------------------


                var isChecked = document.getElementById('majorIS');
                var bisChecked = document.getElementById('majorBIS');

                isChecked.onclick = showIS;
                bisChecked.onclick = showBIS;

                function showIS() {
                    $("#coursesIS").show();
                    $("#coursesBIS").hide();
                    $("#tableIS").show();
                    $("#tableBIS").hide();
                }

                function showBIS() {
                    $("#coursesBIS").show();
                    $("#coursesIS").hide();
                    $("#tableBIS").show();
                    $("#tableIS").hide();
                }
            });

</SCRIPT>
    </body>
</html>
