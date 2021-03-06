
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
              <h1>This is my first Question</h1>
            </div>
            <div class="col-md-12">
              <div class="crumbs">
                <a href="#">Home</a>
                <span class="crumbs-span">/</span>
                <a href="#">Questions</a>
                <span class="crumbs-span">/</span>
                <span class="current">This is my first Question</span>
              </div>
            </div>
          </div><!-- End row -->
        </section><!-- End container -->
      </div><!-- End breadcrumbs -->

      <section class="container main-content">
        <div class="row">
          <div class="col-md-9">
            <article class="question single-question question-type-normal">
              <h2>
                <a href="single_question.html">${post.title}</a>
              </h2>
              <a class="question-report" href="#respond">Reply</a>
              <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
              <div class="question-inner">
                <div class="clearfix"></div>
                <div class="question-desc">
                  <p>${post.content}</p>
                </div>
                <div class="question-details">
                  <span class="question-answered question-answered-done"><i class="icon-ok"></i>solved</span>
                  <span class="question-favorite"><i class="icon-star"></i>5</span>
                </div>
                <span class="question-category"><a href="#"><i class="icon-folder-close"></i>${post.tags}</a></span>
                <span class="question-date"><i class="icon-time"></i><g:formatDate date="${post.createdOn}" format="MMM dd, yyyy"/></span>
                <span class="question-comment"><a href="#commentlist"><i class="icon-comment"></i>${post.getPostComments().size()} Answer</a></span>
                <span class="question-view"><i class="icon-user"></i>${post.views} views</span>
                <span class="single-question-vote-result">+22</span>
                <ul class="single-question-vote">
                  <li><a href="#" class="single-question-vote-down" title="Dislike"><i class="icon-thumbs-down"></i></a></li>
                  <li><a href="#" class="single-question-vote-up" title="Like"><i class="icon-thumbs-up"></i></a></li>
                </ul>
                <div class="clearfix"></div>
              </div>
            </article>

            <div class="share-tags page-content">
              <div class="question-tags"><i class="icon-tags"></i>
                <a href="#">${post.tags}</a>, <a href="#">question</a>, <a href="#">developer</a>
              </div>
              <div class="share-inside-warp">
                <ul>
                  <li>
                    <a href="#" original-title="Facebook">
                      <span class="icon_i">
                        <span class="icon_square" icon_size="20" span_bg="#3b5997" span_hover="#666">
                          <i i_color="#FFF" class="social_icon-facebook"></i>
                        </span>
                      </span>
                    </a>
                    <a href="#" target="_blank">Facebook</a>
                  </li>
                  <li>
                    <a href="#" target="_blank">
                      <span class="icon_i">
                        <span class="icon_square" icon_size="20" span_bg="#00baf0" span_hover="#666">
                          <i i_color="#FFF" class="social_icon-twitter"></i>
                        </span>
                      </span>
                    </a>
                    <a target="_blank" href="#">Twitter</a>
                  </li>
                  <li>
                    <a href="#" target="_blank">
                      <span class="icon_i">
                        <span class="icon_square" icon_size="20" span_bg="#ca2c24" span_hover="#666">
                          <i i_color="#FFF" class="social_icon-gplus"></i>
                        </span>
                      </span>
                    </a>
                    <a href="#" target="_blank">Google plus</a>
                  </li>
                  <li>
                    <a href="#" target="_blank">
                      <span class="icon_i">
                        <span class="icon_square" icon_size="20" span_bg="#e64281" span_hover="#666">
                          <i i_color="#FFF" class="social_icon-dribbble"></i>
                        </span>
                      </span>
                    </a>
                    <a href="#" target="_blank">Dribbble</a>
                  </li>
                  <li>
                    <a target="_blank" href="#">
                      <span class="icon_i">
                        <span class="icon_square" icon_size="20" span_bg="#c7151a" span_hover="#666">
                          <i i_color="#FFF" class="icon-pinterest"></i>
                        </span>
                      </span>
                    </a>
                    <a href="#" target="_blank">Pinterest</a>
                  </li>
                </ul>
                <span class="share-inside-f-arrow"></span>
                <span class="share-inside-l-arrow"></span>
              </div><!-- End share-inside-warp -->
              <div class="share-inside"><i class="icon-share-alt"></i>Share</div>
              <div class="clearfix"></div>
            </div><!-- End share-tags -->

            <div class="about-author clearfix">
              <div class="author-image">
                <a href="#" original-title="${post.user.displayName}" class="tooltip-n"><img alt="" src="${post.user.profile.profilePic}"></a>
              </div>
              <div class="author-bio">
                <h4>About the Author</h4>
${post.user.profile.aboutMe}
              </div>
            </div><!-- End about-author -->

            <div id="related-posts">
              <h2>Related questions</h2>
              <ul class="related-posts">
                <li class="related-item"><h3><a href="#"><i class="icon-double-angle-right"></i>This Is My Second Poll Question</a></h3></li>
                <li class="related-item"><h3><a href="#"><i class="icon-double-angle-right"></i>This is my third Question</a></h3></li>
                <li class="related-item"><h3><a href="#"><i class="icon-double-angle-right"></i>This is my fourth Question</a></h3></li>
                <li class="related-item"><h3><a href="#"><i class="icon-double-angle-right"></i>This is my fifth Question</a></h3></li>
              </ul>
            </div><!-- End related-posts -->

            <div id="commentlist" class="page-content">
              <div class="boxedtitle page-title"><h2>Answers ( <span class="color">${post.getPostComments().size()}</span> )</h2></div>
              <ol class="commentlist clearfix">
                <g:each in="${comments}" var="comment" status="i">
                  <li class="comment">
                    <div class="comment-body clearfix"> 
                      <div class="avatar">
                        <g:userImg id="${comment.userId}"></g:userImg>
                      </div>
                      <div class="comment-text">
                        <div class="author clearfix">
                          <div class="comment-author"><a href="#">${com.developerbeans.user.User.findByUserId(comment.userId).displayName}</a></div>
                          <div class="comment-vote">
                            <ul class="question-vote">
                              <li><a href="#" class="question-vote-up" title="Like"></a></li>
                              <li><a href="#" class="question-vote-down" title="Dislike"></a></li>
                            </ul>
                          </div>
                          <span class="question-vote-result">+1</span>
                          <div class="comment-meta">
                            <div class="date"><i class="icon-time"></i><g:formatDate date="${comment.postedOn}" format="MMM dd, yyyy"/></div> 
                          </div>
                          <a class="comment-reply" href="#respond"><i class="icon-reply"></i>Reply</a> 
                        </div>
                        <div class="text"><p>${comment.description}</p>
                        </div>
                      </div>
                    </div>
                  </li>
                </g:each>
                <!--                <li class="comment">
                                  <div class="comment-body comment-body-answered clearfix"> 
                                    <div class="avatar"><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></div>
                                    <div class="comment-text">
                                      <div class="author clearfix">
                                        <div class="comment-author"><a href="#">admin</a></div>
                                        <div class="comment-vote">
                                          <ul class="question-vote">
                                            <li><a href="#" class="question-vote-up" title="Like"></a></li>
                                            <li><a href="#" class="question-vote-down" title="Dislike"></a></li>
                                          </ul>
                                        </div>
                                        <span class="question-vote-result">+1</span>
                                        <div class="comment-meta">
                                          <div class="date"><i class="icon-time"></i>January 15 , 2014 at 10:00 pm</div> 
                                        </div>
                                        <a class="comment-reply" href="#"><i class="icon-reply"></i>Reply</a> 
                                      </div>
                                      <div class="text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing gravida odio, sit amet suscipit risus ultrices eu. Fusce viverra neque at purus laoreet consequat. Vivamus vulputate posuere nisl quis consequat.</p>
                                      </div>
                                      <div class="question-answered question-answered-done"><i class="icon-ok"></i>Best Answer</div>
                                    </div>
                                  </div>
                                  <ul class="children">
                                    <li class="comment">
                                      <div class="comment-body clearfix"> 
                                        <div class="avatar"><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></div>
                                        <div class="comment-text">
                                          <div class="author clearfix">
                                            <div class="comment-author"><a href="#">vbegy</a></div>
                                            <div class="comment-vote">
                                              <ul class="question-vote">
                                                <li><a href="#" class="question-vote-up" title="Like"></a></li>
                                                <li><a href="#" class="question-vote-down" title="Dislike"></a></li>
                                              </ul>
                                            </div>
                                            <span class="question-vote-result">+1</span>
                                            <div class="comment-meta">
                                              <div class="date"><i class="icon-time"></i>January 15 , 2014 at 10:00 pm</div> 
                                            </div>
                                            <a class="comment-reply" href="#"><i class="icon-reply"></i>Reply</a> 
                                          </div>
                                          <div class="text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing gravida odio, sit amet suscipit risus ultrices eu. Fusce viverra neque at purus laoreet consequat. Vivamus vulputate posuere nisl quis consequat.</p>
                                          </div>
                                        </div>
                                      </div>
                                      <ul class="children">
                                        <li class="comment">
                                          <div class="comment-body clearfix"> 
                                            <div class="avatar"><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></div>
                                            <div class="comment-text">
                                              <div class="author clearfix">
                                                <div class="comment-author"><a href="#">admin</a></div>
                                                <div class="comment-vote">
                                                  <ul class="question-vote">
                                                    <li><a href="#" class="question-vote-up" title="Like"></a></li>
                                                    <li><a href="#" class="question-vote-down" title="Dislike"></a></li>
                                                  </ul>
                                                </div>
                                                <span class="question-vote-result">+9</span>
                                                <div class="comment-meta">
                                                  <div class="date"><i class="icon-time"></i>January 15 , 2014 at 10:00 pm</div> 
                                                </div>
                                                <a class="comment-reply" href="#"><i class="icon-reply"></i>Reply</a> 
                                              </div>
                                              <div class="text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing gravida odio, sit amet suscipit risus ultrices eu. Fusce viverra neque at purus laoreet consequat. Vivamus vulputate posuere nisl quis consequat.</p>
                                              </div>
                                            </div>
                                          </div>
                                        </li>
                                      </ul> End children 
                                    </li>
                                    <li class="comment">
                                      <div class="comment-body clearfix"> 
                                        <div class="avatar"><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></div>
                                        <div class="comment-text">
                                          <div class="author clearfix">
                                            <div class="comment-author"><a href="#">ahmed</a></div>
                                            <div class="comment-vote">
                                              <ul class="question-vote">
                                                <li><a href="#" class="question-vote-up" title="Like"></a></li>
                                                <li><a href="#" class="question-vote-down" title="Dislike"></a></li>
                                              </ul>
                                            </div>
                                            <span class="question-vote-result">-3</span>
                                            <div class="comment-meta">
                                              <div class="date"><i class="icon-time"></i>January 15 , 2014 at 10:00 pm</div> 
                                            </div>
                                            <a class="comment-reply" href="#"><i class="icon-reply"></i>Reply</a> 
                                          </div>
                                          <div class="text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing gravida odio, sit amet suscipit risus ultrices eu. Fusce viverra neque at purus laoreet consequat. Vivamus vulputate posuere nisl quis consequat.</p>
                                          </div>
                                        </div>
                                      </div>
                                    </li>
                                  </ul> End children 
                                </li>-->

              </ol><!-- End commentlist -->
            </div><!-- End page-content -->

            <div id="respond" class="comment-respond page-content clearfix">
              <div class="boxedtitle page-title"><h2>Leave a reply</h2></div>
              <g:form action="reply" method="post"  class="comment-form">
                <input type="hidden" name="id" value="${params.id}"/>
                <div id="respond-inputs" class="clearfix">
<!--                  <p>
                    <label class="required" for="comment_name">Name<span>*</span></label>
                    <input name="author" type="text" value="" id="comment_name" aria-required="true">
                  </p>
                  <p>
                    <label class="required" for="comment_email">E-Mail<span>*</span></label>
                    <input name="email" type="text" value="" id="comment_email" aria-required="true">
                  </p>
                  <p class="last">
                    <label class="required" for="comment_url">Website<span>*</span></label>
                    <input name="url" type="text" value="" id="comment_url">
                  </p>-->
                </div>
                <div id="respond-textarea">
                  <p>
                    <label class="required" for="comment">Comment<span>*</span></label>
                    <textarea id="comment" name="comment" aria-required="true" cols="58" rows="8"></textarea>
                  </p>
                </div>
                <p class="form-submit">
                  <input name="submit" type="submit" id="submit" value="Post your answer" class="button small color">
                </p>
              </g:form>
            </div>

            <div class="post-next-prev clearfix">
              <p class="prev-post">
                <a href="#"><i class="icon-double-angle-left"></i>&nbsp;Prev question</a>
              </p>
              <p class="next-post">
                <a href="#">Next question&nbsp;<i class="icon-double-angle-right"></i></a>                                
              </p>
            </div><!-- End post-next-prev -->	
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

    <!-- js -->
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