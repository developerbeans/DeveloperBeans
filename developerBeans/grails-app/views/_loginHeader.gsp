<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
        <i class="icon-reorder shaded"></i>
      </a>
      <a class="brand" href="index.html">
        Developer Beans
      </a>
      <div class="nav-collapse collapse navbar-inverse-collapse">
        <ul class="nav pull-right">

          <g:if test="${params.action == 'register'}">
            <li>
            <g:link controller="login" action="index">
              Login
            </g:link>
            </li>
            <li><g:link controller="login" action="forgetPwd">
              Forgot your password?
            </g:link></li>
          </g:if>
          <g:if test="${params.action == 'index'}">
            <li><g:link controller="login" action="register">
              Sign Up
            </g:link></li>
            <li><g:link controller="login" action="forgetPwd">
              Forgot your password?
            </g:link></li>
          </g:if>
          <g:if test="${params.action == 'forgetPwd'}">
            <li><g:link controller="login" action="index">
              Login
            </g:link></li>
            <li><g:link controller="login" action="register">
              Sign Up
            </g:link></li>
          </g:if>
        </ul>
      </div><!-- /.nav-collapse -->
    </div>
  </div><!-- /navbar-inner -->
</div><!-- /navbar -->