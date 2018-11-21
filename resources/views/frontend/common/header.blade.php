<header class="header">
				<div class="container">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand" href="/">
							<img src="/images/logo.png" alt="logo">
						</a>
						<button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<i class="fa fa-bars"></i>
						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto">
								<?php
								echo menu('topmenu', 'topmenu');
								?>
								
								<li class="nav-item d-flex align-items-center">
									<div class="search-nav">
										<button type="button" class="btn-search toggle-search"><i class="fa fa-search"></i></button>
										<div class="form-search">
											<div class="input-group">
												<input type="search" class="form-control">
												<div class="input-group-prepend">
													<button type="button" class="btn btn-search"><i class="fa fa-search"></i></button>
												</div>
											</div>
										</div>
									</div>

									<!-- Authentication Links -->
									@guest
									<button type="button" data-toggle="modal" data-target="#login" class="info-user pointer">
										<i class="fa fa-user mg4" aria-hidden="true"></i>
										Đăng nhập
									</button>
									<!-- Modal -->
									<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="loginLabel" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content f7fbfe">
												<div class="modal-header border-0">
													<h5 class="modal-title text-sign mt-3 text-uppercase w-100 text-center" id="loginLabel">Đăng nhập</h5>
													
												</div>
												<div class="modal-body">
													<div class="row">
														<div class="col-sm-12 col-md-10  offset-md-1 ">
														<form method="POST" action="{{ route('frontend.login') }}">
                        									@csrf
															<div class="form-group">
																<div class="input-group">
																	
																	<input id="email" type="email" class="sign-input form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus placeholder="Tài khoản" />

																	@if ($errors->has('email'))
																		<span class="invalid-feedback" role="alert">
																			<strong>{{ $errors->first('email') }}</strong>
																		</span>
																	@endif

																</div>
															</div>
															<div class="form-group">
																<div class="input-group">
																	
																	 <input id="password" type="password" class="sign-input form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" placeholder="Mật khẩu" required />

																	@if ($errors->has('password'))
																		<span class="invalid-feedback" role="alert">
																			<strong>{{ $errors->first('password') }}</strong>
																		</span>
																	@endif

																</div>
															</div>
															<div class="form-group">
																<input type="submit" class="btn signin btn-lg btn-primary btn-block" value="ĐĂNG NHẬP">
															</div>

															<div class="form-group mt-4 mb-5 form-check">
																<label class="form-check-label">
																<input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>Ghi nhớ tài khoản
																</label>
																<a class="float-right" href="{{ route('frontend.password.request') }}">Quên mật khẩu?</a>
															</div>

														</form>	

															

															<div class="mb-5">Bạn chưa có tài khoản? <a onclick="register();" data-toggle="modal" data-target="#signup" class="text-danger" href="#">Đăng ký ngay!</a></div>


															<div class="text-center mb-3">
																<a href="/login/facebook">
																<img class='pointer img-fluid' src="/images/facebook_login.png" alt=""/></a>
															</div>
															<div class="text-center mb-5 img-fluid">
															<a href="/login/google">
																<img class='pointer' src="/images/google_login.png" alt="">
																</a>
															</div>
														</div>
													</div>

													
													
												</div>
											
											</div>
										</div>
									</div>
									<!--end login-->
									<div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="loginLabel" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content f7fbfe">
												<div class="modal-header border-0">
													<h5 class="modal-title text-sign mt-3 text-uppercase w-100 text-center" id="loginLabel">Đăng ký tài khoản</h5>
													
												</div>
												<div class="modal-body">
													<div class="row">
														<div class="col-sm-12 col-md-10  offset-md-1 ">
														<form method="POST" action="{{ route('frontend.register') }}">
                        									@csrf
															<div class="form-group">
																<div class="input-group">
																	<input placeholder="Tài khoản" id="name" type="text" class="sign-input form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>

																	@if ($errors->has('name'))
																		<span class="invalid-feedback" role="alert">
																			<strong>{{ $errors->first('name') }}</strong>
																		</span>
																	@endif
																</div>
															</div>
															<div class="form-group">
																<div class="input-group">
																	
																	<input placeholder="Địa chỉ mail" id="email" type="email" class="sign-input form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

																	@if ($errors->has('email'))
																		<span class="invalid-feedback" role="alert">
																			<strong>{{ $errors->first('email') }}</strong>
																		</span>
																	@endif

																</div>
															</div>
															<div class="form-group">
																<div class="input-group">
																	
																	<input placeholder="Mật khẩu" id="password" type="password" class="sign-input form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required />

																	@if ($errors->has('password'))
																		<span class="invalid-feedback" role="alert">
																			<strong>{{ $errors->first('password') }}</strong>
																		</span>
																	@endif
																</div>
															</div>
															<div class="form-group">
																<div class="input-group">
																	<input placeholder="Nhập lại mật khẩu" id="password-confirm" type="password" class="sign-input form-control" name="password_confirmation" required />
																	 
																</div>
															</div>

															<div class="form-group mb-5">
																<input type="submit" class="btn signin btn-lg btn-primary btn-block" value="Tạo tài khoản">
															</div>

														</form>	
															
														</div>
													</div>

													
													
												</div>
											
											</div>
										</div>
									</div>
									@else
									<button type="button" class="info-user">	
										<div class="avatar-user">
											<img src="/images/avatar.png" alt="avatar">
										</div>
										<div class="name-user">{{ Auth::user()->name }}</div>
										<div class="notification-user">2</div>
										<ul class="nav-toogle">
											<li><a href="">Khóa học của tôi <i class="fa fa-file-text-o"></i></a></li>
											<li><a href="">Đổi mật khẩu <i class="fa fa-lock"></i></a></li>
											<li><a href="">Thông báo (2) <i class="fa fa-exclamation-circle "></i></a></li>
											<li><a href="">Giỏ hàng (1) <i class="fa fa-shopping-cart"></i></a></li>
											<li>
											<a class="dropdown-item" href="{{route('frontend.logout') }}"
											onclick="event.preventDefault();
															document.getElementById('logout-form').submit();">
												Thoát<i class="fa fa-sign-out"></i>
											</a>

											<form id="logout-form" action="{{ route('frontend.logout') }}" method="POST" style="display: none;">
												@csrf
											</form>
											</li>
										</ul>
									</button>
									@endguest

									<div class="hotline-nav">
										<img src="/images/icon-phone.png" alt="icon hotline">
										<div class="text-hotline">
											<span>0982 735 392</span>
											8h - 22h hàng ngày
										</div>
									</div>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</header>
