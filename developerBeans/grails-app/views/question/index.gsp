
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
  <head>

    <!-- Basic Page Needs -->
    <meta charset="utf-8">

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

      <g:render template="/header"/>

      <div class="breadcrumbs">
        <section class="container">
          <div class="row">
            <div class="col-md-12">
              <h1>Questions Category</h1>
            </div>
            <div class="col-md-12">
              <div class="crumbs">
                <a href="#">Home</a>
                <span class="crumbs-span">/</span>
                <span class="current">Questions Category</span>
              </div>
            </div>
          </div><!-- End row -->
        </section><!-- End container -->
      </div><!-- End breadcrumbs -->

      <section class="container main-content">
        <div class="row">
          <div class="col-md-9">
            <g:each in="${posts}" var="post" status="i">
              <article class="question question-type-normal">
                <h2>
                  <g:link controller="question" action="detail" id="${post.id}">${post.title}</g:link>
                </h2>
                <a class="question-report" href="#">Report</a>
                <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                <div class="question-author">
                  <a href="#" original-title="${post.user.displayName}" class="question-author-img tooltip-n"><span></span><img alt="" src="${post.user.profile.profilePic}"></a>
                </div>
                <div class="question-inner">
                  <div class="clearfix"></div>
                  <p class="question-desc">${post.content}</p>
                  <div class="question-details">
                    <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                    <span class="question-favorite"><i class="icon-star"></i>5</span>
                  </div>
                  <span class="question-category"><a href="#"><i class="icon-folder-close"></i>${post.tags}</a></span>
                  <span class="question-date"><i class="icon-time"></i><g:formatDate date="${post.createdOn}" format="MMM dd, yyyy"/></span>
                  <span class="question-comment"><a href="#"><i class="icon-comment"></i>${post.getPostComments().size()} Answer</a></span>
                  <span class="question-view"><i class="icon-user"></i>${post.views} views</span>
                  <div class="clearfix"></div>
                </div>
              </article>
            </g:each>

            <a href="#" class="load-questions"><i class="icon-refresh"></i>Load More Questions</a>
          </div><!-- End main -->
          <aside class="col-md-3 sidebar">
            <div class="widget widget_stats">
              <h3 class="widget_title">Stats</h3>
              <div class="ul_list ul_list-icon-ok">
                <ul>
                  <li><i class="icon-question-sign"></i>Questions ( <span>20</span> )</li>
                  <li><i class="icon-comment"></i>Answers ( <span>50</span> )</li>
                </ul>
              </div>
            </div>

            <div class="widget widget_social">
              <h3 class="widget_title">Find Us</h3>
              <ul>
                <li class="rss-subscribers">
                  <a href="#" target="_blank">
                    <strong>
                      <i class="icon-rss"></i>
                      <span>Subscribe</span><br>
                      <small>To RSS Feed</small>
                    </strong>
                  </a>
                </li>
                <li class="facebook-fans">
                  <a href="#" target="_blank">
                    <strong>
                      <i class="social_icon-facebook"></i>
                      <span>5,000</span><br>
                      <small>People like it</small>
                    </strong>
                  </a>
                </li>
                <li class="twitter-followers">
                  <a href="#" target="_blank">
                    <strong>
                      <i class="social_icon-twitter"></i>
                      <span>3,000</span><br>
                      <small>Followers</small>
                    </strong>
                  </a>
                </li>
                <li class="youtube-subs">
                  <a href="#" target="_blank">
                    <strong>
                      <i class="icon-play"></i>
                      <span>1,000</span><br>
                      <small>Subscribers</small>
                    </strong>
                  </a>
                </li>
              </ul>
            </div>

            <div class="widget widget_login">
              <h3 class="widget_title">Login</h3>
              <div class="form-style form-style-2">
                <form>
                  <div class="form-inputs clearfix">
                    <p class="login-text">
                      <input type="text" value="Username" onfocus="if (this.value == 'Username') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Username';}">
                      <i class="icon-user"></i>
                    </p>
                    <p class="login-password">
                      <input type="password" value="Password" onfocus="if (this.value == 'Password') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Password';}">
                      <i class="icon-lock"></i>
                      <a href="#">Forget</a>
                    </p>
                  </div>
                  <p class="form-submit login-submit">
                    <input type="submit" value="Log in" class="button color small login-submit submit">
                  </p>
                  <div class="rememberme">
                    <label><input type="checkbox" checked="checked"> Remember Me</label>
                  </div>
                </form>
                <ul class="login-links login-links-r">
                  <li><a href="#">Register</a></li>
                </ul>
                <div class="clearfix"></div>
              </div>
            </div>

            <div class="widget widget_highest_points">
              <h3 class="widget_title">Highest points</h3>
              <ul>
                <li>
                  <div class="author-img">
                    <a href="#"><img width="60" height="60" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg" alt=""></a>
                  </div> 
                  <h6><a href="#">admin</a></h6>
                  <span class="comment">12 Points</span>
                </li>
                <li>
                  <div class="author-img">
                    <a href="#"><img width="60" height="60" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png" alt=""></a>
                  </div> 
                  <h6><a href="#">vbegy</a></h6>
                  <span class="comment">10 Points</span>
                </li>
                <li>
                  <div class="author-img">
                    <a href="#"><img width="60" height="60" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png" alt=""></a>
                  </div> 
                  <h6><a href="#">ahmed</a></h6>
                  <span class="comment">5 Points</span>
                </li>
              </ul>
            </div>

            <div class="widget widget_tag_cloud">
              <h3 class="widget_title">Tags</h3>
              <a href="#">projects</a>
              <a href="#">Portfolio</a>
              <a href="#">Wordpress</a>
              <a href="#">Html</a>
              <a href="#">Css</a>
              <a href="#">jQuery</a>
              <a href="#">2code</a>
              <a href="#">vbegy</a>
            </div>

            <div class="widget">
              <h3 class="widget_title">Recent Questions</h3>
              <ul class="related-posts">
                <li class="related-item">
                  <h3><a href="#">This is my first Question</a></h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                  <div class="clear"></div><span>Feb 22, 2014</span>
                </li>
                <li class="related-item">
                  <h3><a href="#">This Is My Second Poll Question</a></h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                  <div class="clear"></div><span>Feb 22, 2014</span>
                </li>
              </ul>
            </div>

          </aside><!-- End sidebar -->
        </div><!-- End row -->
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
    <!-- End js -->

  </body>
</html>