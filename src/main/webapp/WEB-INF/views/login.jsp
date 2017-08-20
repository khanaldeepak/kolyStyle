<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="login-container col-md-6">
        <div class="login-box" id="login-box">
            <h3>sign in</h3>
            <h3>have a Koly's profile?</h3>
            <p class="signin-text">If you've already created a koly.com profile, you can sign in here.</p>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>

            <form id="loginForm" name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>

                <div class="form-group">
                    <label for="username">Username: </label>
                    <input type="text" id="username" name="username" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="password">Password: </label>
                    <input type="password" id="password" name="password" class="form-control"/>
                    <p class="help-text">Password is case sensitive</p>
                </div>
                <div class="form-group">
                    <a href="#" class="forgot-password">Forgot Your Password?</a>
                </div>

                <input type="submit" value="SIGN IN" class="btn btn-danger margin-tb-5"/>

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            </form>
<script>
    $( "#loginForm" ).validate({
        rules: {
            field: {
                required: true
            }
        }
    });
</script>
        </div>
    </div>
    <div class="login-container col-md-6 border-left-grey">
        <div class="login-box" id="register-box">
            <h3> </h3>
            <h3 class="signin-btn margin-tb-5">don't have a Koly's profile?</h3>
            <p class="signin-text margin-tb-5">Create a profile now to take advantage of express checkout and other convenient features.
                It only takes a minute! </p>



                <div class="form-group margin-tb-5">
                    <a href="#" class="member-benefits">See All The Benefits Of Creating A Profile</a>
                </div>
                <div class="form-group margin-tb-5">
                    <a href="#" class="privacy-policy">Privacy Policy</a>
                </div>

                <a href="<c:url value="/register"/>" class="btn btn-danger margin-tb-5"/>CREATE</a>

        </div>

    </div>
    <div class="password-rules col-md-12">
        <h3>keep in mind a few basic password rules:</h3>
        <ul>
        <li class="col-md-4 col-sm-4">
            Change your passwords
            periodically
        </li>
        <li class="col-md-4 col-sm-4">
            Avoid re-using password for multiple sites
        </li>
        <li class="col-md-4 col-sm-4">
            Use complex characters including uppercase and numbers
        </li>
        </ul>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>
