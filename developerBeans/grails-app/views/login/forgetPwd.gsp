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

  <g:render template="/loginHeader"/>
  <!-- /navbar -->

  <div class="wrapper">
    <div class="container">
      <div class="row">
        <div class="module module-login span4 offset4">

          <g:form controller="login" action="forget" class="form-vertical" type="POST">
            <div class="module-head">
              <h3>Forget</h3>
            </div>
            <div class="module-body">
              <g:if test="${flash.message}">
                <div id="flashMessage" class="control-group">
                  <div class="controls row-fluid">
                    <div class="alert alert-error">
${flash.message}
                    </div>
                  </div>
                </div>
              </g:if>

              <div id="error-div" style="display:none" class="control-group">
                <div class="controls row-fluid">
                  <div id="error-message" class="alert alert-error">
${flash.message}
                  </div>
                </div>
              </div>
              <div class="control-group">
                <div class="controls row-fluid">
                  <input class="span12" type="text" id="inputEmail" name="inputEmail" placeholder="Email">
                </div>
              </div>
            </div>
            <div class="module-foot">
              <div class="control-group">
                <div class="controls clearfix">
                  <input type="submit" onclick="return validateforgetDetails()" class="btn btn-primary pull-right" value="Submit"/>
                </div>
              </div>
            </div>
          </g:form>
        </div>
      </div>
    </div>
  </div><!--/.wrapper-->

  <g:render template="/footer"/>
  <script src="${resource(dir: 'js/main', file: 'jquery-1.9.1.min.js')}" type="text/javascript"></script>
  <script src="${resource(dir: 'js/main', file: 'jquery-ui-1.10.1.custom.min.js')}" type="text/javascript"></script>
  <script src="${resource(dir: 'js/main', file: 'bootstrap.min.js')}" type="text/javascript"></script>
  <script src="${resource(dir: 'js/main', file: 'validation.js')}" type="text/javascript"></script>
</body>