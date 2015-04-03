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

      <g:render template="/header"/>

      <div class="section-warp ask-me">
        <div class="container clearfix">
          <div class="box_icon box_warp box_no_border box_no_background" box_border="transparent" box_background="transparent" box_color="#FFF">
            <div class="row">
              <div class="col-md-12">
                <h2>Welcome to Developer Beans, Awesome Plugins & Answer Questions..</h2>
                <p>Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                <div class="clearfix"></div>
                <a class="color button dark_button medium" href="#">About Us</a>
                <a class="color button dark_button medium" href="#">Join Now</a>
                <div class="clearfix"></div>
                <form class="form-style form-style-2">
                  <p>
                    <input type="text" id="question_title" value="Ask any question and you be sure find your answer ?" onfocus="if(this.value=='Ask any question and you be sure find your answer ?')this.value='';" onblur="if(this.value=='')this.value='Ask any question and you be sure find your answer ?';">
                    <i class="icon-pencil"></i>
                    <span class="color button small publish-question">Ask Now</span>
                  </p>
                </form>
              </div>
            </div><!-- End row -->
          </div><!-- End box_icon -->
        </div><!-- End container -->
      </div><!-- End section-warp -->

      <section class="container main-content">
        <div class="row">
          <div class="col-md-9">

            <div class="tabs-warp question-tab">
              <ul class="tabs">
                <li class="tab"><a href="#" class="current">Recent Questions</a></li>
                <li class="tab"><a href="#">Most Responses</a></li>
                <li class="tab"><a href="#">Recently Answered</a></li>
                <li class="tab"><a href="#">No answers</a></li>
              </ul>
              <div class="tab-inner-warp">
                <div class="tab-inner">
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This is my first Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered question-answered-done"><i class="icon-ok"></i>solved</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-poll">
                    <h2>
                      <a href="single_question_poll.html">This Is My Second Poll Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-signal"></i>Poll</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Third Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Fourth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Fifth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Sixth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My seventh Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Eighth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <a href="#" class="load-questions"><i class="icon-refresh"></i>Load More Questions</a>
                </div>
              </div>
              <div class="tab-inner-warp">
                <div class="tab-inner">
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This is my first Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered question-answered-done"><i class="icon-ok"></i>solved</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-poll">
                    <h2>
                      <a href="single_question_poll.html">This Is My Second Poll Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-signal"></i>Poll</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Third Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Fourth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Fifth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Sixth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My seventh Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Eighth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <a href="#" class="load-questions"><i class="icon-refresh"></i>Load More Questions</a>
                </div>
              </div>
              <div class="tab-inner-warp">
                <div class="tab-inner">
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This is my first Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered question-answered-done"><i class="icon-ok"></i>solved</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-poll">
                    <h2>
                      <a href="single_question_poll.html">This Is My Second Poll Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-signal"></i>Poll</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Third Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Fourth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Fifth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Sixth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My seventh Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Eighth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <a href="#" class="load-questions"><i class="icon-refresh"></i>Load More Questions</a>
                </div>
              </div>
              <div class="tab-inner-warp">
                <div class="tab-inner">
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This is my first Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered question-answered-done"><i class="icon-ok"></i>solved</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-poll">
                    <h2>
                      <a href="single_question_poll.html">This Is My Second Poll Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-signal"></i>Poll</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Third Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Fourth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Fifth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Sixth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My seventh Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/avatar.png"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <article class="question question-type-normal">
                    <h2>
                      <a href="single_question.html">This Is My Eighth Question</a>
                    </h2>
                    <a class="question-report" href="#">Report</a>
                    <div class="question-type-main"><i class="icon-question-sign"></i>Question</div>
                    <div class="question-author">
                      <a href="#" original-title="ahmed" class="question-author-img tooltip-n"><span></span><img alt="" src="http://2code.info/demo/html/ask-me/images/demo/admin.jpeg"></a>
                    </div>
                    <div class="question-inner">
                      <div class="clearfix"></div>
                      <p class="question-desc">Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur vitae velit in neque dictum blandit.</p>
                      <div class="question-details">
                        <span class="question-answered"><i class="icon-ok"></i>in progress</span>
                        <span class="question-favorite"><i class="icon-star"></i>5</span>
                      </div>
                      <span class="question-category"><a href="#"><i class="icon-folder-close"></i>wordpress</a></span>
                      <span class="question-date"><i class="icon-time"></i>4 mins ago</span>
                      <span class="question-comment"><a href="#"><i class="icon-comment"></i>5 Answer</a></span>
                      <span class="question-view"><i class="icon-user"></i>70 views</span>
                      <div class="clearfix"></div>
                    </div>
                  </article>
                  <a href="#" class="load-questions"><i class="icon-refresh"></i>Load More Questions</a>
                </div>
              </div>
            </div><!-- End page-content -->
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

  </body>
</html>