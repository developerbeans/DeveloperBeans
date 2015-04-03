<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="layout" content="main1">
    <title>Developer Beans</title>
    <link type="text/css" href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet">
    <link type="text/css" href="${resource(dir: 'css', file: 'blue.css')}" rel="stylesheet">
    <link type="text/css" href="${resource(dir: 'css', file: 'responsive.css')}" rel="stylesheet">

  </head>
  <body>
    <div class="loader"><div class="loader_html"></div></div>

    <div id="wrap" class="grid_1200">
      <div class="panel-pop" id="signup">
        <div class="loader" id="res_loader"><div class="loader_html"></div></div>
        <h2>Register Now<i class="icon-remove"></i></h2>
        <div id="error-div" style="display:none" class="alert-message error">
          <p><span id="error-message">success message</span><br>
        </div>
        <div class="form-style form-style-3">
          <div class="form-inputs clearfix">
            <p>
              <label class="required">Display Name<span>*</span></label>
              <input  type="text" id="displayName" name="displayName" placeholder="Display Name">
            </p>
            <p>
              <label class="required">E-Mail<span>*</span></label>
              <input  type="text" id="inputEmail" name="inputEmail" placeholder="Email">
            </p>
            <p>
              <label class="required">Password<span>*</span></label>
              <input  type="password" id="inputPassword" name="inputPassword" placeholder="Password">
            </p>
            <p>
              <label class="required">Confirm Password<span>*</span></label>
              <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password">
            </p>
          </div>
          <p class="form-submit">
            <input type="button" onclick="return validateNewUserDetails()" value="Signup" class="button color small submit">
          </p>
        </div>
      </div><!-- End signup -->

      <div class="panel-pop" id="lost-password">
        <div class="loader" id="fog_loader"><div class="loader_html"></div></div>
        
        <h2>Lost Password<i class="icon-remove"></i></h2>

        <div id="error-div-fog-success" style="display:none" class="alert-message success">
          <p><span id="error-message-fog-success">success message</span><br>
        </div>

        <div id="error-div-fog" style="display:none" class="alert-message error">
          <p><span id="error-message-fog">success message</span><br>
        </div>
        <div class="form-style form-style-3">
          <p>Lost your password? Please enter your username and email address. You will receive a link to create a new password via email.</p>
          <div class="form-inputs clearfix">
            <p>
              <label class="required">E-Mail<span>*</span></label>
              <input class="span12" type="text" id="inputEmail-fog" name="inputEmail-fog" placeholder="Email">
            </p>
          </div>
          <p class="form-submit">
            <input type="button" onclick="return validateforgetDetails()" value="Reset" class="button color small submit">
          </p>
          <div class="clearfix"></div>
        </div>
      </div><!-- End lost-password -->

      <g:render template="/header"/>

      <div class="breadcrumbs">
        <section class="container">
          <div class="row">
            <div class="col-md-12">
              <h1>Login</h1>
            </div>
            <!--            <div class="col-md-12">
                          <div class="crumbs">
                            <a href="#">Home</a>
                            <span class="crumbs-span">/</span>
                            <a href="#">Pages</a>
                            <span class="crumbs-span">/</span>
                            <span class="current">Login</span>
                          </div>
                        </div>-->
          </div><!-- End row -->
        </section><!-- End container -->
      </div><!-- End breadcrumbs -->

      <section class="container main-content">
        <div class="login">
          <div class="row">
            <div class="col-md-6">
              <div class="page-content">
                <h2>Login</h2>

                <div id="error-div-login" style="display:none" class="alert-message error">
                  <p><span id="error-message-login">success message</span><br>
                </div>

                <g:if test="${flash.message}">
                  <div id="flashMessage"  class="alert-message error">
                    <p><span id="error-message">${flash.message}</span><br>
                  </div>
                </g:if>

                <div class="form-style form-style-3">
                  <g:form controller="login" action="auth" type="POST">
                    <div class="form-inputs clearfix">
                      <p class="login-text">
                        <input type="text" value="Email" id="inputEmail-login" name="inputEmail" onfocus="if (this.value == 'Email') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Username';}">
                        <i class="icon-user"></i>
                      </p>
                      <p class="login-password">
                        <input type="password" value="Password" id="inputPassword-login" name="inputPassword" onfocus="if (this.value == 'Password') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Password';}">
                        <i class="icon-lock"></i>
                        <a href="#">Forget</a>
                      </p>
                    </div>
                    <p class="form-submit login-submit">
                      <input type="submit" value="Log in" onclick="return validateUserDetails()" class="button color small login-submit submit">
                    </p>
                  </g:form>
                </div>
              </div><!-- End page-content -->
            </div><!-- End col-md-6 -->
            <div class="col-md-6">
              <div class="page-content">
                <h2>Register Now</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing gravdio, sit amet suscipit risus ultrices eu. Fusce viverra neque at purus laoreet consequa. Vivamus vulputate posuere nisl quis consequat.</p>
                <a class="button small color signup">Create an account</a>
              </div><!-- End page-content -->
            </div><!-- End col-md-6 -->
          </div><!-- End row -->
        </div><!-- End login -->
      </section><!-- End container -->

      <g:render template="/footer"/>
    </div><!-- End wrap -->

    <div class="go-up"><i class="icon-chevron-up"></i></div>
    <script src="${resource(dir: 'js', file: 'jquery.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jquery-ui-1.10.3.custom.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jquery.easing.1.3.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'html5.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js/twitter', file: 'jquery.tweet.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jflickrfeed.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jquery.inview.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jquery.tipsy.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'tabs.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jquery.flexslider.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jquery.prettyPhoto.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jquery.carouFredSel-6.2.1-packed.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jquery.scrollTo.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jquery.nav.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'tags.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'jquery.bxslider.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'custom.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js/custom', file: 'validation.js')}" type="text/javascript"></script>

  </body>
</html>