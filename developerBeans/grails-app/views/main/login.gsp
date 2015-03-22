<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Developer Beans</title>
    <link type="text/css" href="${resource(dir: 'css/main', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link type="text/css" href="${resource(dir: 'css/main', file: 'bootstrap-responsive.min.css')}" rel="stylesheet">
    <link type="text/css" href="${resource(dir: 'css/main', file: 'theme.css')}" rel="stylesheet">
    <link type="text/css" href="${resource(dir: 'css/main', file: 'font-awesome.css')}" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
  </head>
  <body>

  <g:render template="/header"/>
  <!-- /navbar -->

  <div class="wrapper">
    <div class="container">
      <div class="row">
        <div class="module module-login span4 offset4">
       
          <form class="form-vertical">
            <div class="module-head">
              <h3>Sign In</h3>
            </div>
            <div class="module-body">
              <g:if test="${flash.message}">
                <div class="control-group">
                  <div class="controls row-fluid">
                    <div class="alert alert-error">
                      <button type="button" class="close" data-dismiss="alert">×</button>
                      <strong>Oh snap!</strong> ${flash.message}
                    </div>

                  </div>
                </div>
              </g:if>
              <div class="control-group">
                <div class="controls row-fluid">
                  <input class="span12" type="text" id="inputEmail" name="inputEmail" placeholder="Username">
                </div>
              </div>
              <div class="control-group">
                <div class="controls row-fluid">
                  <input class="span12" type="password" id="inputPassword" name="inputPassword" placeholder="Password">
                </div>
              </div>
            </div>
            <div class="module-foot">
              <div class="control-group">
                <div class="controls clearfix">
                  <!--<a role="button" class="btn btn-primary pull-right" href="${request.getContextPath()}/admin/dashboard">Login</a>-->
                  <button type="submit" class="btn btn-primary pull-right">Login</button>
                  <!--                    <label class="checkbox">
                                        <input type="checkbox"> Remember me
                                      </label>-->
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div><!--/.wrapper-->

  <g:render template="/footer"/>
  <script src="${resource(dir: 'js/main', file: 'jquery-1.9.1.min.js')}" type="text/javascript"></script>
  <script src="${resource(dir: 'js/main', file: 'jquery-ui-1.10.1.custom.min.js')}" type="text/javascript"></script>
  <script src="${resource(dir: 'js/main', file: 'bootstrap.min.js')}" type="text/javascript"></script>
</body>