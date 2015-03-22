<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main1">
    <title>Developer Beans</title>
    <link type="text/css" href="${resource(dir: 'css/main', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link type="text/css" href="${resource(dir: 'css/main', file: 'bootstrap-responsive.min.css')}" rel="stylesheet">
    <link type="text/css" href="${resource(dir: 'css/main', file: 'theme.css')}" rel="stylesheet">
    <link type="text/css" href="${resource(dir: 'css/main', file: 'font-awesome.css')}" rel="stylesheet">

    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
  </head>
  <body>
  <g:render template="/header"/>
  <!-- /navbar -->

  <div class="wrapper">
    <div class="container">
      <div class="row">
        <g:render template="/sideBar"/>
        <div class="span9">
          <div class="content">
            <div class="module">
              <div class="module-head">
                <h3>
                  All Members</h3>
              </div>
              <div class="module-option clearfix">
                <form>
                  <div class="input-append pull-left">
                    <input type="text" class="span3" placeholder="Filter by name...">
                    <button type="submit" class="btn">
                      <i class="icon-search"></i>
                    </button>
                  </div>
                </form>
                <div class="btn-group pull-right" data-toggle="buttons-radio">
                  <button type="button" class="btn">
                    All</button>
                  <button type="button" class="btn">
                    Male</button>
                  <button type="button" class="btn">
                    Female</button>
                </div>
              </div>
              <div class="module-body">
                <g:set var="stat" value="0"/>
                <g:each in="${developers}" var="developer" status="i">
                  <g:set var="stat" value="${i+1}"/>

                  <g:if test="${stat % 2 != 0}">
                    <div class="row-fluid">
                      <div class="span6">
                        <div class="media user">
                          <a class="media-avatar pull-left" href="#">
                            <img src="${request.getContextPath()}/images/admin/user.png">
                          </a>
                          <div class="media-body">
                            <h3 class="media-title">
${developer.displayName}
                            </h3>
                            <p>
                              <small class="muted">Pakistan</small></p>
                            <div class="media-option btn-group shaded-icon">
                              <button class="btn btn-small">
                                <i class="icon-envelope"></i>
                              </button>
                              <button class="btn btn-small">
                                <i class="icon-share-alt"></i>
                              </button>
                            </div>
                          </div>
                        </div>
                      </div>
                     
                      <g:if test="${stat == developers.size()}">
                    </div>
                    <!--/.row-fluid-->
                    <br />
                  </g:if>
                  </g:if>
                  <g:if test="${stat % 2 == 0}">
                    <div class="span6">
                      <div class="media user">
                        <a class="media-avatar pull-left" href="#">
                          <img src="${request.getContextPath()}/images/admin/user.png">
                        </a>
                        <div class="media-body">
                          <h3 class="media-title"> ${developer.displayName}</h3>
                          <p>
                            <small class="muted">Pakistan</small></p>
                          <div class="media-option btn-group shaded-icon">
                            <button class="btn btn-small">
                              <i class="icon-envelope"></i>
                            </button>
                            <button class="btn btn-small">
                              <i class="icon-share-alt"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                    </div>
                    <!--/.row-fluid-->
                    <br />
                  </g:if>



                </g:each>


                <div class="pagination pagination-centered">
                  <ul>
                    <li><a href="#"><i class="icon-double-angle-left"></i></a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#"><i class="icon-double-angle-right"></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <!--/.content-->
        </div>
        <!--/.span9-->
      </div>
    </div><!--/.container-->
  </div><!--/.wrapper-->

  <g:render template="/footer"/>

  <script src="${resource(dir: 'js/main', file: 'jquery-1.9.1.min.js')}" type="text/javascript"></script>
  <script src="${resource(dir: 'js/main', file: 'jquery-ui-1.10.1.custom.min.js')}" type="text/javascript"></script>
  <script src="${resource(dir: 'js/main', file: 'bootstrap.min.js')}" type="text/javascript"></script>
</body>
</html>
