<!DOCTYPE html>
<html lang="en">
  <head>
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
                <h3>Trending </h3>
              </div>
              <div class="module-body">
               <div class="stream-list">
<!--                  <div class="media stream new-update">
                    <a href="#">
                      <i class="icon-refresh shaded"></i>
                      11 updates
                    </a>
                  </div>-->
                  <div class="media stream">
                    <a href="#" class="media-avatar medium pull-left">
                       <img src="${request.getContextPath()}/images/admin/user.png">
                    </a>
                    <div class="media-body">
                      <div class="stream-headline">
                        <h5 class="stream-author">
                          John Donga 
                          <small>08 July, 2014</small>
                        </h5>
                        <div class="stream-text">
                          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
                        </div>
                        <div class="stream-attachment photo">
                          <div class="responsive-photo">
                            <img src="${request.getContextPath()}/images/admin/img.jpg" />
                          </div>
                        </div>
                      </div><!--/.stream-headline-->

                      <div class="stream-options">
                        <a href="#" class="btn btn-small">
                          <i class="icon-thumbs-up shaded"></i>
                          Like
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-reply shaded"></i>
                          Reply
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-retweet shaded"></i>
                          Repost
                        </a>
                      </div>
                    </div>
                  </div><!--/.media .stream-->
                  <div class="media stream">
                    <a href="#" class="media-avatar medium pull-left">
                      <img src="${request.getContextPath()}/images/admin/user.png">
                    </a>
                    <div class="media-body">
                      <div class="stream-headline">
                        <h5 class="stream-author">
                          John Donga 
                          <small>08 July, 2014</small>
                        </h5>
                        <div class="stream-text">
                          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
                        </div>
                        <div class="stream-attachment video">
                          <div class="responsive-video">
                            <iframe src="//player.vimeo.com/video/20630217" width="560" height="315" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="http://vimeo.com/20630217">Google Car</a> from <a href="http://vimeo.com/user3524956">Henk Rogers</a> on <a href="https://vimeo.com">Vimeo</a>.</p>
                          </div>
                        </div>
                      </div><!--/.stream-headline-->

                      <div class="stream-options">
                        <a href="#" class="btn btn-small">
                          <i class="icon-thumbs-up shaded"></i>
                          Like
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-reply shaded"></i>
                          Reply
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-retweet shaded"></i>
                          Repost
                        </a>
                      </div>
                    </div>
                  </div><!--/.media .stream-->

                  <div class="media stream">
                    <a href="#" class="media-avatar medium pull-left">
                      <img src="${request.getContextPath()}/images/admin/user.png">
                    </a>
                    <div class="media-body">
                      <div class="stream-headline">
                        <h5 class="stream-author">
                          John Donga 
                          <small>08 July, 2014</small>
                        </h5>
                        <div class="stream-text">
                          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
                        </div>
                      </div><!--/.stream-headline-->

                      <div class="stream-options">
                        <a href="#" class="btn btn-small">
                          <i class="icon-thumbs-up shaded"></i>
                          Like
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-reply shaded"></i>
                          Reply
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-retweet shaded"></i>
                          Repost
                        </a>
                      </div>

                      <div class="stream-respond">
                        <div class="media stream">
                          <a href="#" class="media-avatar small pull-left">
                            <img src="${request.getContextPath()}/images/admin/user.png">
                          </a>
                          <div class="media-body">
                            <div class="stream-headline">
                              <h5 class="stream-author">
                                John Donga 
                                <small>10 July 14</small>
                              </h5>
                              <div class="stream-text">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                              </div>
                            </div><!--/.stream-headline-->
                          </div>
                        </div><!--/.media .stream-->
                        <div class="media stream">
                          <a href="#" class="media-avatar small pull-left">
                            <img src="${request.getContextPath()}/images/admin/user.png">
                          </a>
                          <div class="media-body">
                            <div class="stream-headline">
                              <h5 class="stream-author">
                                John Donga 
                                <small>12 July 14</small>
                              </h5>
                              <div class="stream-text">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.
                              </div>
                            </div><!--/.stream-headline-->
                          </div>
                        </div><!--/.media .stream-->
                      </div><!--/.stream-respond-->

                      <div class="stream-respond">
                        <div class="media stream">
                          <a href="#" class="media-avatar small pull-left">
                            <img src="${request.getContextPath()}/images/admin/user.png">
                          </a>
                          <div class="media-body">
                            <div class="stream-headline">
                              <h5 class="stream-author">
                                John Donga 
                                <small>10 July 14</small>
                              </h5>
                              <div class="stream-text">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                              </div>
                            </div><!--/.stream-headline-->
                          </div>
                        </div><!--/.media .stream-->
                        <div class="media stream">
                          <a href="#" class="media-avatar small pull-left">
                            <img src="${request.getContextPath()}/images/admin/user.png">
                          </a>
                          <div class="media-body">
                            <div class="stream-headline">
                              <h5 class="stream-author">
                                John Donga 
                                <small>12 July 14</small>
                              </h5>
                              <div class="stream-text">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.
                              </div>
                            </div><!--/.stream-headline-->
                          </div>
                        </div><!--/.media .stream-->
                      </div><!--/.stream-respond-->
                      <div class="stream-respond">
                        <div class="media stream">
                          <a href="#" class="media-avatar small pull-left">
                            <img src="${request.getContextPath()}/images/admin/user.png">
                          </a>
                          <div class="media-body">
                            <div class="stream-headline">
                              <h5 class="stream-author">
                                John Donga 
                                <small>10 July 14</small>
                              </h5>
                              <div class="stream-text">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                              </div>
                            </div><!--/.stream-headline-->
                          </div>
                        </div><!--/.media .stream-->
                        <div class="media stream">
                          <a href="#" class="media-avatar small pull-left">
                            <img src="${request.getContextPath()}/images/admin/user.png">
                          </a>
                          <div class="media-body">
                            <div class="stream-headline">
                              <h5 class="stream-author">
                                John Donga 
                                <small>12 July 14</small>
                              </h5>
                              <div class="stream-text">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.
                              </div>
                            </div><!--/.stream-headline-->
                          </div>
                        </div><!--/.media .stream-->
                      </div><!--/.stream-respond-->
                    </div>
                  </div><!--/.media .stream-->
                  <div class="media stream">
                    <a href="#" class="media-avatar medium pull-left">
                      <img src="${request.getContextPath()}/images/admin/user.png">
                    </a>
                    <div class="media-body">
                      <div class="stream-headline">
                        <h5 class="stream-author">
                          John Donga 
                          <small>08 July, 2014</small>
                        </h5>
                        <div class="stream-text">
                          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
                        </div>
                      </div><!--/.stream-headline-->

                      <div class="stream-options">
                        <a href="#" class="btn btn-small">
                          <i class="icon-thumbs-up shaded"></i>
                          Like
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-reply shaded"></i>
                          Reply
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-retweet shaded"></i>
                          Repost
                        </a>
                      </div>
                    </div>
                  </div><!--/.media .stream-->

                  <div class="media stream">
                    <a href="#" class="media-avatar medium pull-left">
                      <img src="${request.getContextPath()}/images/admin/user.png">
                    </a>
                    <div class="media-body">
                      <div class="stream-headline">
                        <h5 class="stream-author">
                          John Donga 
                          <small>08 July, 2014</small>
                        </h5>
                        <div class="stream-text">
                          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
  </div>
                        <div class="stream-attachment photo">
                          <div class="responsive-photo">
                            <img src="images/img.jpg" />
                          </div>
                        </div>
                      </div><!--/.stream-headline-->

                      <div class="stream-options">
                        <a href="#" class="btn btn-small">
                          <i class="icon-thumbs-up shaded"></i>
                          Like
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-reply shaded"></i>
                          Reply
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-retweet shaded"></i>
                          Repost
                        </a>
                      </div>
                    </div>
                  </div><!--/.media .stream-->
                  <div class="media stream">
                    <a href="#" class="media-avatar medium pull-left">
                      <img src="${request.getContextPath()}/images/admin/user.png">
                    </a>
                    <div class="media-body">
                      <div class="stream-headline">
                        <h5 class="stream-author">
                          John Donga 
                          <small>08 July, 2014</small>
                        </h5>
                        <div class="stream-text">
                          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
                        </div>
                        <div class="stream-attachment video">
                          <div class="responsive-video">


                            <iframe src="//player.vimeo.com/video/20630217" width="560" height="315" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="http://vimeo.com/20630217">Google Car</a> from <a href="http://vimeo.com/user3524956">Henk Rogers</a> on <a href="https://vimeo.com">Vimeo</a>.</p>


                          </div>
                        </div>
                      </div><!--/.stream-headline-->

                      <div class="stream-options">
                        <a href="#" class="btn btn-small">
                          <i class="icon-thumbs-up shaded"></i>
                          Like
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-reply shaded"></i>
                          Reply
                        </a>
                        <a href="#" class="btn btn-small">
                          <i class="icon-retweet shaded"></i>
                          Repost
                        </a>
                      </div>
                    </div>
                  </div><!--/.media .stream-->

                  <div class="media stream load-more">
                    <a href="#">
                      <i class="icon-refresh shaded"></i>
                      show more...
                    </a>
                  </div>
                </div><!--/.stream-list-->
              </div><!--/.module-body-->
            </div><!--/.module-->

          </div><!--/.content-->
        </div><!--/.span9-->
      </div>
    </div><!--/.container-->
  </div><!--/.wrapper-->

  <g:render template="/footer"/>

  <script src="${resource(dir: 'js/main', file: 'jquery-1.9.1.min.js')}" type="text/javascript"></script>
  <script src="${resource(dir: 'js/main', file: 'jquery-ui-1.10.1.custom.min.js')}" type="text/javascript"></script>
  <script src="${resource(dir: 'js/main', file: 'bootstrap.min.js')}" type="text/javascript"></script>

</body>