<%@page import="com.ysnc.shopping.nUser"%>
<%@page	import="com.ysnc.shopping.product.*,
				com.ysnc.shopping.DAO.*,
				java.util.*"%>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta content="all" name="robots">
			<meta content="˳����,www.sundan.com" name="author">
				<meta name="globalsign-domain-verification"
					content="fp-m0bUZ0P05zfPQkKpjf4ngKPYpB59SEv8Mkrx3nF">
					<meta content="˳����,��Ȩ����" name="Copyright">
						<meta
							content="��˳�������̳ǡ�˳�����¸߶����Ϲ����̳ǣ���Ʒ��֤���ṩ30���������˻����ͻ���װͬ�������������Ҫ��Ӫԭװ���ڼҵ磬�������ӡ����䡢�ƹ񡢿յ���ϴ�»������ԡ�������ֻ��������˶��Ȳ�Ʒ����ݵ����Ϸ��񣬷��ĵ������ŵ��ۺ󣬽�����ĺ��֮�ǣ�������칺�"
							name="description">
							<meta
								content="������������˳��,˳�������̳�,����˳���̳�,˳���̳�,˳����,˳�繺��,�߶˼ҵ��̳�,�ҵ��̳�,�����,30���˻���,��������,���ڼҵ�,רҵ�������,���Ϲ���,�����ֻ��Ƽ�,�������"
								name="keywords">
								<title>˳�������̳�(sundan.com)-�߶˼ҵ繺���̳ǣ���Ʒ����-֧���ͻ����Ż�������</title>
								<meta http-equiv="X-UA-Compatible" content="IE=edge">
									<link href="imgs/style.css" rel="stylesheet" type="text/css">
										<link href="imgs/new2.css" rel="stylesheet">
											<link rel="stylesheet" href="imgs/head_menu.css">
												<script src="imgs/s.js" charset="GBK"></script>
												<script src="imgs/hm.js"></script>
												<script src="imgs/jquery.js"></script>
												<script src="imgs/all.js"></script>
												<script src="imgs/n-all.js"></script>
												<link style="" id="layui_layer_skinlayercss"
													href="imgs/layer.css" rel="stylesheet">

													<%
														int hotProducts = 20;
														List<Product> products = ProductMgr.getInstance().hotProductList(hotProducts);
													%>
												
</head>
<body>
	<div class="home-top" style="width: 100%; overflow: hidden;"></div>

	<script>
		$.ajax({
			type : "POST",
			url : "/ads/topbanner.php",
			dataType : "html",
			success : function(data) {
				$(".home-top").html(data);
			}
		});
	</script>
	<div class="head-top">
		<div class="top-left">
			<div class="top-logo">
				<a href="" target="_blank"><img src="imgs/sundan-logo.png"></a>
			</div>
		</div>
		<div class="top-right">
			<div class="top-cart">
				<a href="mycart.jsp" style="color: #fff">���ﳵ<span
					id="top-cart-sum">0</span></a>
			</div>
		</div>
		<div class="top-middle">
			<div class="top-search">
				<form action="/search-result.html" method="post" async="false"
					id="search_form">
					<input name="search_keywords" id="search_keywords"
						class="search-input"
						autocompleter="associate_autocomplete_goods:name,goods_id"
						placeholder="������..." type="text"> <input
						class="search-button" value="&nbsp;" type="submit">
				</form>
			</div>
		</div>
	</div>
	<div class="head-box" id="top-scroll-nav">
		<div class="menu">
			<div class="menu-box">
				<div class="nav-left">
					<div class="all-sort nav-down" id="nav-down">
						<h2>
							<a href="">ȫ����Ʒ����</a>
						</h2>
						<div class="all-menu-list" style="display: none;"
							id="menu-list-box">
							<div class="all-sort-list">
								<div class="item">
									<h3>
										<a href="gallery-378.html"><img
											src="imgs/9516e1f6b3f9101567d60d655f825ce282997320.png">��ҵ�/�յ�</a>
									</h3>
									<div class="item-list clearfix">
										<div class="subitem">
											<dl class="fore1">
												<dt>
													<a href="gallery-437.html"><img
														src="imgs/42e8a8ba35e566c4c47e1d7799bf0b55ac29a047.jpg">�ҵ���</a>
												</dt>
												<dd>
													<em><a href="gallery-201.html"><font color="red">�յ�</font></a></em>
													<em><a href="gallery-30.html">����</a></em> <em><a
														href="gallery-22.html">ϴ�»�</a></em> <em><a
														href="gallery-263.html">����</a></em> <em><a
														href="gallery-272.html">�ƹ�/���</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-438.html"><img
														src="imgs/06d6bee0b0487114fa7092bff0c2519b0859bfb3.jpg">�������</a>
												</dt>
												<dd>
													<em><a href="gallery-141.html">��ˮ��</a></em> <em><a
														href="gallery-315.html">�����̻�</a></em> <em><a
														href="gallery-174.html">¯��</a></em> <em><a
														href="gallery-152.html">������</a></em> <em><a
														href="gallery-205.html">����/����</a></em> <em><a
														href="gallery-172.html">ϴ���</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-55.html"><img
														src="imgs/b3b9568a1c0df7943464b34cae2de2c0439aee69.jpg">��ͥӰ��</a>
												</dt>
												<dd>
													<em><a href="gallery-56.html">��ͥӰԺ</a></em> <em><a
														href="gallery-57.html">����/����</a></em> <em><a
														href="gallery-60.html">DVD������</a></em> <em><a
														href="gallery-59.html">���Ż�</a></em> <em><a
														href="gallery-427.html">����ͶӰ��</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-264.html"><img
														src="imgs/c3ab8ef9daa121dc03c5bd35986d25588e82574a.jpg">��ҵ����</a>
												</dt>
												<dd>
													<em><a href="gallery-66.html">����֧��</a></em> <em><a
														href="gallery-64.html">��˷�</a></em> <em><a
														href="gallery-65.html">ң����</a></em> <em><a
														href="gallery-67.html">Ӱ���߲�</a></em> <em><a
														href="gallery-323.html">�������</a></em> <em><a
														href="gallery-68.html">ת����</a></em> <em><a
														href="gallery-265.html">��ϴ��</a></em> <em><a
														href="gallery-266.html">�յ��Ҽ�/����</a></em> <em><a
														href="gallery-328.html">ϴ�����</a></em>
												</dd>
											</dl>
										</div>
										<div class="cat-right">
											<dl class="categorys-promotions">
												<dd>
													<table id="__01" border="0" cellpadding="0" cellspacing="0"
														height="352" width="165">
														<tbody>
															<tr>
																<td><a href="gallery-index---0---201.html"
																	target="_blank"><img src="imgs/djd2016_003.jpg"
																		alt="" height="29" width="83"></a></td>
																<td><a href="gallery-index---0---202.html"
																	target="_blank"><img src="imgs/djd2016_006.jpg"
																		alt="" height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---203.html"
																	target="_blank"><img src="imgs/djd2016_002.jpg"
																		alt="" height="29" width="83"></a></td>
																<td><a href="gallery-index---0---204.html"
																	target="_blank"><img src="imgs/djd2016_005.jpg"
																		alt="" height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---205.html"
																	target="_blank"><img src="imgs/djd2016_004.jpg"
																		alt="" height="30" width="83"></a></td>
																<td><a href="gallery-index---0---206.html"
																	target="_blank"><img src="imgs/djd2016_008.jpg"
																		alt="" height="30" width="82"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/djd2016_007.jpg"
																	alt="" height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-13304.html"
																	target="_blank"><img src="imgs/djd831_08.jpg"
																		alt="" height="127" width="165"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/djd2016.jpg" alt=""
																	height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-8246.html"
																	target="_blank"><img src="imgs/djd831_10.jpg"
																		alt="" height="127" width="165"></a></td>
															</tr>
														</tbody>
													</table>
												</dd>
											</dl>
										</div>
									</div>
								</div>
								<div class="item">
									<h3>
										<a href="gallery-1.html"><img
											src="imgs/8b50180fb6c30214c023496de868ba2e58bb5adf.png">�ֻ�ͨѶ</a>
									</h3>
									<div class="item-list clearfix">
										<div class="subitem">
											<dl class="fore1">
												<dt>
													<a href="gallery-431.html"><img
														src="imgs/851a162f1fca32971d73bc39c4f69870980393f4.png">ͨѶ</a>
												</dt>
												<dd>
													<em><a href="mobile.jsp"><font color="red">�ֻ�</font></a></em>
													<em><a href="gallery-228.html">�绰��</a></em> <em><a
														href="gallery-121.html">�Խ���</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-53.html"><img
														src="imgs/75a944c55484d99be09c681e2e4542ccd1000e91.jpg">�ֻ����</a>
												</dt>
												<dd>
													<em><a href="gallery-84.html">�ƶ���Դ</a></em> <em><a
														href="gallery-85.html">�ֻ���/��</a></em> <em><a
														href="gallery-116.html">��Ĥ</a></em> <em><a
														href="gallery-426.html">�ֻ��洢��</a></em> <em><a
														href="gallery-106.html">������/�����</a></em> <em><a
														href="gallery-386.html">���ĸ�</a></em> <em><a
														href="gallery-314.html">�������</a></em> <em><a
														href="gallery-113.html">�������</a></em>
												</dd>
											</dl>
										</div>
										<div class="cat-right">
											<dl class="categorys-promotions">
												<dd>
													<table id="__01" border="0" cellpadding="0" cellspacing="0"
														height="352" width="165">
														<tbody>
															<tr>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---243.html"><img
																		src="imgs/sj_01.jpg" alt="" height="29" width="83"></a></td>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---245.html"><img
																		src="imgs/sj_02.jpg" alt="" height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---246.html"><img
																		src="imgs/sj_03.jpg" alt="" height="29" width="83"></a></td>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---248.html"><img
																		src="imgs/sj_04.jpg" alt="" height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---271.html"><img
																		src="imgs/sj_05.jpg" alt="" height="30" width="83"></a></td>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---251.html"><img
																		src="imgs/sj_06.jpg" alt="" height="30" width="82"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/sj_07.jpg" alt=""
																	height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a target="_blank"
																	href="http://www.sundan.com/product-14971.html"><img
																		src="imgs/vivo-v3.jpg" alt="" height="127" width="165"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/sj_09.jpg" alt=""
																	height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a target="_blank"
																	href="http://www.sundan.com/product-15008.html"><img
																		src="imgs/sx_n7.jpg" alt="" height="127" width="165"></a></td>
															</tr>
														</tbody>
													</table>
												</dd>
											</dl>
										</div>
									</div>
								</div>
								<div class="item">
									<h3>
										<a href="gallery-432.html"><img
											src="imgs/d34303cd1e338f21b058cd4ad2a7a3a9448df24f.png">����/����</a>
									</h3>
									<div class="item-list clearfix">
										<div class="subitem">
											<dl class="fore1">
												<dt>
													<a href="gallery-200.html"><img
														src="imgs/6b15745aadaea49c2c588bd3cbb53bcb3cfe1490.jpg">ʱ��Ӱ��</a>
												</dt>
												<dd>
													<em><a href="gallery-227.html"><font color="red">����</font></a></em>
													<em><a href="gallery-236.html">��������/��������</a></em> <em><a
														href="gallery-245.html">MP3/MP4</a></em> <em><a
														href="gallery-268.html">��/¼����</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-126.html"><img
														src="imgs/5fb1e567865ffdef5e84d7cbf578e8a61f2789c8.jpg">�����豸</a>
												</dt>
												<dd>
													<em><a href="gallery-407.html">�����ֱ�/�ֻ�</a></em> <em><a
														href="gallery-450.html">VR������ʵ</a></em> <em><a
														href="gallery-367.html">��������</a></em> <em><a
														href="gallery-131.html">��г�/������</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-178.html"><img
														src="imgs/27221cbde8c31f8b7024de552c74bd6ac2942808.jpg">ѧϰ��Ϸ</a>
												</dt>
												<dd>
													<em><a href="gallery-95.html">��Ϸ����</a></em> <em><a
														href="gallery-180.html">������</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-443.html"><img
														src="imgs/293a332922becf2cff8febfeb625bb27aaeb0abe.jpg">����</a>
												</dt>
												<dd>
													<em><a href="gallery-411.html">����/������</a></em> <em><a
														href="gallery-413.html">�缪��/�籴˾</a></em> <em><a
														href="gallery-409.html">����/��˾</a></em> <em><a
														href="gallery-412.html">�������</a></em> <em><a
														href="gallery-414.html">�������</a></em>
												</dd>
											</dl>
										</div>
										<div class="cat-right">
											<dl class="categorys-promotions">
												<dd>
													<table id="__01" border="0" cellpadding="0" cellspacing="0"
														height="352" width="165">
														<tbody>
															<tr>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---209.html"><img
																		src="imgs/znyl_01.jpg" alt="" height="29" width="83"></a></td>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---210.html"><img
																		src="imgs/znyl_02.jpg" alt="" height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---211.html"><img
																		src="imgs/znyl_03.jpg" alt="" height="29" width="83"></a></td>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---212.html"><img
																		src="imgs/znyl_04.jpg" alt="" height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---213.html"><img
																		src="imgs/znyl_05.jpg" alt="" height="30" width="83"></a></td>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---214.html"><img
																		src="imgs/znyl_06.jpg" alt="" height="30" width="82"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/znyl_07.jpg" alt=""
																	height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a target="_blank"
																	href="http://www.sundan.com/product-14671.html"><img
																		src="imgs/bbkh_lc.jpg" alt="" height="127" width="165"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/znyl_09.jpg" alt=""
																	height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a target="_blank"
																	href="http://www.sundan.com/product-13791.html"><img
																		src="imgs/TY_k1.jpg" alt="" height="127" width="165"></a></td>
															</tr>
														</tbody>
													</table>
												</dd>
											</dl>
										</div>
									</div>
								</div>
								<div class="item">
									<h3>
										<a href="gallery-382.html"><img
											src="imgs/ce899a8a62de57dbef93a3aabf68b87c5511af2b.png">����/����</a>
									</h3>
									<div class="item-list clearfix">
										<div class="subitem">
											<dl class="fore1">
												<dt>
													<a href="gallery-405.html"><img
														src="imgs/e56a3d2b5d6dba7aa01655fb666c54f05c559263.jpg">��Ӱ����</a>
												</dt>
												<dd>
													<em><a href="gallery-420.html"><font color="red">���</font></a></em>
													<em><a href="gallery-433.html">������</a></em> <em><a
														href="gallery-313.html">�����</a></em> <em><a
														href="gallery-232.html">��ͷ</a></em> <em><a
														href="gallery-319.html">��Զ��</a></em> <em><a
														href="gallery-451.html">�ֳ���̨</a></em> <em><a
														href="gallery-214.html">�������</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-138.html"><img
														src="imgs/b31dff4a66c21b1b3500ad66f617bc0cdad9bb5d.jpg">�������</a>
												</dt>
												<dd>
													<em><a href="gallery-286.html">�����</a></em> <em><a
														href="gallery-112.html">�洢��/������</a></em> <em><a
														href="gallery-299.html">������/�����</a></em> <em><a
														href="gallery-408.html">��ͷ����/�����װ</a></em> <em><a
														href="gallery-293.html">���ż�/��̨</a></em> <em><a
														href="gallery-410.html">�����/�����ֱ�</a></em> <em><a
														href="gallery-419.html">GoPro���</a></em> <em><a
														href="gallery-425.html">��������Ƭֽ</a></em>
												</dd>
											</dl>
										</div>
										<div class="cat-right">
											<dl class="categorys-promotions">
												<dd>
													<table id="__01" border="0" cellpadding="0" cellspacing="0"
														height="352" width="165">
														<tbody>
															<tr>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---216.html"><img
																		src="imgs/smhp_01.jpg" alt="" height="29" width="83"></a></td>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---217.html"><img
																		src="imgs/smhp_02.jpg" alt="" height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---219.html"><img
																		src="imgs/smhp_03.jpg" alt="" height="29" width="83"></a></td>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---224.html"><img
																		src="imgs/smhp_04.jpg" alt="" height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---225.html"><img
																		src="imgs/smhp_05.jpg" alt="" height="30" width="83"></a></td>
																<td><a target="_blank"
																	href="http://www.sundan.com/gallery-index---0---227.html"><img
																		src="imgs/smhp_06.jpg" alt="" height="30" width="82"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/znyl_07.jpg" alt=""
																	height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a target="_blank"
																	href="http://www.sundan.com/product-9070.html"><img
																		src="imgs/sj_08.jpg" alt="" height="127" width="165"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/znyl_09.jpg" alt=""
																	height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a target="_blank"
																	href="http://www.sundan.com/product-12155.html"><img
																		src="imgs/sj_10.jpg" alt="" height="127" width="165"></a></td>
															</tr>
														</tbody>
													</table>
												</dd>
											</dl>
										</div>
									</div>
								</div>
								<div class="item">
									<h3>
										<a href="gallery-389.html"><img
											src="imgs/7c588cadb1cc574e16bded4521d82e58041325f2.png">����</a>
									</h3>
									<div class="item-list clearfix">
										<div class="subitem">
											<dl class="fore1">
												<dt>
													<a href="gallery-388.html"><img
														src="imgs/b463e99e4ddc89a93ef1639ba0733bcb47b859b9.jpg">����</a>
												</dt>
												<dd>
													<em><a href="gallery-40.html"><font color="red">�ʼǱ�����</font></a></em>
													<em><a href="gallery-82.html">ƽ�����</a></em> <em><a
														href="gallery-90.html">̨ʽ����</a></em> <em><a
														href="gallery-444.html">������/����վ</a></em> <em><a
														href="gallery-188.html">��ʾ��</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-38.html"><img
														src="imgs/2fcd3284640ddad3261904fa0f07657e73855af8.jpg">��������</a>
												</dt>
												<dd>
													<em><a href="gallery-384.html">���/����</a></em> <em><a
														href="gallery-130.html">U��</a></em> <em><a
														href="gallery-139.html"><font color="red">�ƶ�Ӳ��</font></a></em>
													<em><a href="gallery-109.html">����</a></em> <em><a
														href="gallery-160.html">���԰�</a></em> <em><a
														href="gallery-143.html">��������</a></em> <em><a
														href="gallery-189.html">����ͷ</a></em> <em><a
														href="gallery-127.html">��д��</a></em> <em><a
														href="gallery-166.html">ƽ�屣����</a></em> <em><a
														href="gallery-190.html">�����װ</a></em> <em><a
														href="gallery-185.html">��¼����</a></em> <em><a
														href="gallery-156.html">����/������</a></em> <em><a
														href="gallery-153.html">��˷�</a></em> <em><a
														href="gallery-176.html">�������</a></em> <em><a
														href="gallery-290.html">�������</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-436.html"><img
														src="imgs/9222e5427fa151e265cc4ea9d30cd4e9c2a9c188.jpg">�����Ʒ</a>
												</dt>
												<dd>
													<em><a href="gallery-193.html">·����/������</a></em> <em><a
														href="gallery-194.html">��������</a></em>
												</dd>
											</dl>
										</div>
										<div class="cat-right">
											<dl class="categorys-promotions">
												<dd>
													<table id="__01" border="0" cellpadding="0" cellspacing="0"
														height="352" width="165">
														<tbody>
															<tr>
																<td><a href="gallery-index---0---254.html"
																	target="_blank"><img src="imgs/DN_01.jpg" alt=""
																		height="29" width="83"></a></td>
																<td><a href="gallery-index---0---257.html"
																	target="_blank"><img src="imgs/DN_02.jpg" alt=""
																		height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---259.html"
																	target="_blank"><img src="imgs/DN_03.jpg" alt=""
																		height="29" width="83"></a></td>
																<td><a href="gallery-index---0---260.html"
																	target="_blank"><img src="imgs/DN_04.jpg" alt=""
																		height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---262.html"
																	target="_blank"><img src="imgs/DN_05.jpg" alt=""
																		height="30" width="83"></a></td>
																<td><a href="gallery-index---0---264.html"
																	target="_blank"><img src="imgs/DN_06.jpg" alt=""
																		height="30" width="82"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/DN_07.jpg" alt=""
																	height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-13265.html"
																	target="_blank"><img src="imgs/dn_08.jpg" alt=""
																		height="127" width="165"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/DN_09.jpg" alt=""
																	height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-11960.html"
																	target="_blank"><img src="imgs/dn_10.jpg" alt=""
																		height="127" width="165"></a></td>
															</tr>
														</tbody>
													</table>
												</dd>
											</dl>
										</div>
									</div>
								</div>
								<div class="item">
									<h3>
										<a href="gallery-203.html"><img
											src="imgs/8b5d1ff9cbc6476b4fd1ff56c13a984b720af1a4.png">�칫�豸</a>
									</h3>
									<div class="item-list clearfix">
										<div class="subitem">
											<dl class="fore1">
												<dt>
													<a href="gallery-434.html"><img
														src="imgs/a9fe0e5ff957f00f37cd11dd9b14838eece5cce9.jpg">��ӡ�豸</a>
												</dt>
												<dd>
													<em><a href="gallery-390.html">�๦�ܴ�ӡһ���</a></em> <em><a
														href="gallery-383.html">�����ܴ�ӡ��</a></em> <em><a
														href="gallery-220.html">��ӡ��</a></em> <em><a
														href="gallery-222.html">ɨ����</a></em> <em><a
														href="gallery-218.html">�����</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-452.html"><img
														src="imgs/c721284ae9406b6312b206d313d5e21c8e6f81d4.jpg">ͶӰ�豸</a>
												</dt>
												<dd>
													<em><a href="gallery-392.html">����ͶӰ��</a></em> <em><a
														href="gallery-69.html">ͶӰĻ</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-453.html"><img
														src="imgs/d899b6993ebbd43bf368223aa2d835695b577955.jpg">���������豸</a>
												</dt>
												<dd>
													<em><a href="gallery-229.html">�鳮/�㳮��</a></em> <em><a
														href="gallery-226.html">��ֽ��</a></em> <em><a
														href="gallery-238.html">���չ�</a></em> <em><a
														href="gallery-181.html">¼����</a></em> <em><a
														href="gallery-449.html">UPS��Դ</a></em> <em><a
														href="gallery-391.html">�����칫�豸</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-435.html"><img
														src="imgs/77ebbc238444d9e8df9d0277a003925ca9b5b9ee.jpg">�Ĳ�/�ľ�</a>
												</dt>
												<dd>
													<em><a href="gallery-246.html">����/ī��/ɫ��</a></em> <em><a
														href="gallery-422.html">��ӡֽ/��Ƭֽ</a></em> <em><a
														href="gallery-251.html">�칫�ľ�</a></em> <em><a
														href="gallery-361.html">������</a></em>
												</dd>
											</dl>
										</div>
										<div class="cat-right">
											<dl class="categorys-promotions">
												<dd>
													<table id="__01" border="0" cellpadding="0" cellspacing="0"
														height="352" width="165">
														<tbody>
															<tr>
																<td><a href="gallery-index---0---230.html"
																	target="_blank"><img src="imgs/BG_01.jpg" alt=""
																		height="29" width="83"></a></td>
																<td><a href="gallery-index---0---233.html"
																	target="_blank"><img src="imgs/BG_02.jpg" alt=""
																		height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---234.html"
																	target="_blank"><img src="imgs/BG_03.jpg" alt=""
																		height="29" width="83"></a></td>
																<td><a href="gallery-index---0---236.html"
																	target="_blank"><img src="imgs/BG_04.jpg" alt=""
																		height="29" width="82"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---237.html"
																	target="_blank"><img src="imgs/BG_05.jpg" alt=""
																		height="30" width="83"></a></td>
																<td><a href="gallery-index---0---239.html"
																	target="_blank"><img src="imgs/BG_06.jpg" alt=""
																		height="30" width="82"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/BG_07.jpg" alt=""
																	height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-13166.html"
																	target="_blank"><img src="imgs/bg_08.jpg" alt=""
																		height="127" width="165"></a></td>
															</tr>
															<tr>
																<td colspan="2"><img src="imgs/BG_09.jpg" alt=""
																	height="5" width="165"></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-2552.html"
																	target="_blank"><img src="imgs/bg_10.jpg" alt=""
																		height="127" width="165"></a></td>
															</tr>
														</tbody>
													</table>
												</dd>
											</dl>
										</div>
									</div>
								</div>
								<div class="item">
									<h3>
										<a href="gallery-145.html"><img
											src="imgs/11a24729fce2c719a36695d42358bfab39378dc6.png">����С�ҵ�</a>
									</h3>
									<div class="item-list clearfix">
										<div class="subitem">
											<dl class="fore1">
												<dt>
													<a href="gallery-50.html"><img
														src="imgs/21fb5c7bdaa72a2757ee4b89c5b718ba7a41fd24.jpg">ˮ�豸</a>
												</dt>
												<dd>
													<em><a href="gallery-221.html">��ˮ��</a></em> <em><a
														href="gallery-237.html">��ˮ��</a></em> <em><a
														href="gallery-235.html">��ˮ��/����ˮƿ</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-173.html"><img
														src="imgs/881161df3330a950071e2504a1069f2734087c77.jpg">ʳ������</a>
												</dt>
												<dd>
													<em><a href="gallery-163.html"><font color="red">�緹��</font></a></em>
													<em><a href="gallery-169.html">��ѹ����</a></em> <em><a
														href="gallery-158.html">���¯/����¯</a></em> <em><a
														href="gallery-311.html">����/����</a></em> <em><a
														href="gallery-168.html">΢��¯</a></em> <em><a
														href="gallery-312.html">������ </a></em> <em><a
														href="gallery-187.html">�����/��ʿ¯</a></em> <em><a
														href="gallery-428.html">�����/�տ���</a></em> <em><a
														href="gallery-447.html">�ɹ���</a></em> <em><a
														href="gallery-240.html">�󵰻�</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-308.html"><img
														src="imgs/a6d1010dc15ca2bc6c3c28f664b20ece08beb9ee.jpg">��Ʒ����</a>
												</dt>
												<dd>
													<em><a href="gallery-310.html">����/ե֭��</a></em> <em><a
														href="gallery-309.html">������</a></em> <em><a
														href="gallery-209.html">���Ȼ�</a></em> <em><a
														href="gallery-211.html">���Ȼ����</a></em>
												</dd>
											</dl>
										</div>
										<div class="cat-right">
											<dl class="categorys-promotions">
												<dd>
													<table id="__01" border="0" cellpadding="0" cellspacing="0"
														height="352" width="165">
														<tbody>
															<tr>
																<td><a href="gallery-index---0---223.html"><img
																		src="imgs/sjd_01.jpg" alt="" height="29" width="82"></a></td>
																<td><a href="gallery-index---0---226.html"><img
																		src="imgs/sjd_02.jpg" alt="" height="29" width="83"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---228.html"><img
																		src="imgs/sjd_03.jpg" alt="" height="29" width="82"></a></td>
																<td><a href="gallery-index---0---231.html"><img
																		src="imgs/sjd_04.jpg" alt="" height="29" width="83"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---232.html"><img
																		src="imgs/sjd_05.jpg" alt="" height="30" width="82"></a></td>
																<td><a href="gallery-index---0---235.html"><img
																		src="imgs/sjd_06.jpg" alt="" height="30" width="83"></a></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-5961.html"
																	target="_blank"><img src="imgs/xjd_07.jpg" alt=""
																		height="137" width="165"></a></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-14681.html"
																	target="_blank"><img src="imgs/xjd_08.jpg" alt=""
																		height="127" width="165"></a></td>
															</tr>
														</tbody>
													</table>
												</dd>
											</dl>
										</div>
									</div>
								</div>
								<div class="item">
									<h3>
										<a href="gallery-404.html"><img
											src="imgs/cfe9d1b811f7897a6c725d0621883c1e28e419e0.png">�������</a>
									</h3>
									<div class="item-list clearfix">
										<div class="subitem">
											<dl class="fore1">
												<dt>
													<a href="gallery-439.html"><img
														src="imgs/df47e141904d7a20a3ca460fd5a852f2caf2f23d.jpg">��������</a>
												</dt>
												<dd>
													<em><a href="gallery-91.html">����������</a></em> <em><a
														href="gallery-92.html">����������</a></em> <em><a
														href="gallery-446.html"><font color="red">����</font></a></em> <em><a
														href="gallery-96.html">��ʪ��</a></em> <em><a
														href="gallery-94.html">��ʪ��</a></em> <em><a
														href="gallery-101.html">�յ���</a></em> <em><a
														href="gallery-89.html">ȡů����</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-440.html"><img
														src="imgs/adf804835f4e454a55f2b272ada2c7b8763450f2.jpg">�Ӽҵ���</a>
												</dt>
												<dd>
													<em><a href="gallery-117.html">������/�ر�</a></em> <em><a
														href="gallery-98.html">���̻�/���ٶ�</a></em> <em><a
														href="gallery-339.html">����</a></em> <em><a
														href="gallery-119.html">������Ͱ��</a></em> <em><a
														href="gallery-120.html">��������</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-441.html"><img
														src="imgs/79b570f6321e266bf4335c207ab94f1b03b529c7.jpg">�ƾ�</a>
												</dt>
												<dd>
													<em><a href="gallery-355.html">̨��</a></em> <em><a
														href="gallery-360.html">��Ͳ</a></em> <em><a
														href="gallery-351.html">Сҹ��</a></em> <em><a
														href="gallery-257.html">�����豸/�ƾ�</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-247.html"><img
														src="imgs/7f2ffd3737b8fc09fad566d98b1ccca1dd4f4693.jpg">�������</a>
												</dt>
												<dd>
													<em><a href="gallery-350.html">����</a></em> <em><a
														href="gallery-259.html">ת����/�Ų�</a></em> <em><a
														href="gallery-297.html">������</a></em> <em><a
														href="gallery-349.html">����</a></em> <em><a
														href="gallery-347.html">����/ˮ��ͷ</a></em> <em><a
														href="gallery-298.html">��ζ��Ʒ</a></em> <em><a
														href="gallery-322.html">�������</a></em> <em><a
														href="gallery-244.html">���������</a></em> <em><a
														href="gallery-300.html">�����������</a></em>
												</dd>
											</dl>
										</div>
										<div class="cat-right">
											<dl class="categorys-promotions">
												<dd>
													<table id="__01" border="0" cellpadding="0" cellspacing="0"
														height="352" width="165">
														<tbody>
															<tr>
																<td><a href="gallery-index---0---238.html"
																	target="_blank"><img src="imgs/shdq_01.jpg" alt=""
																		height="29" width="82"></a></td>
																<td><a href="gallery-index---0---240.html"
																	target="_blank"><img src="imgs/shdq_02.jpg" alt=""
																		height="29" width="83"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---247.html"
																	target="_blank"><img src="imgs/shdq_03.jpg" alt=""
																		height="29" width="82"></a></td>
																<td><a href="gallery-index---0---244.html"
																	target="_blank"><img src="imgs/shdq_04.jpg" alt=""
																		height="29" width="83"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---241.html"
																	target="_blank"><img src="imgs/shdq_05.jpg" alt=""
																		height="30" width="82"></a></td>
																<td><a href="gallery-index---0---250.html"
																	target="_blank"><img src="imgs/shdq_06.jpg" alt=""
																		height="30" width="83"></a></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-12327.html"
																	target="_blank"><img src="imgs/shdq_07.jpg" alt=""
																		height="137" width="165"></a></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-14194.html"
																	target="_blank"><img src="imgs/shdq_08.jpg" alt=""
																		height="127" width="165"></a></td>
															</tr>
														</tbody>
													</table>
												</dd>
											</dl>
										</div>
									</div>
								</div>
								<div class="item">
									<h3>
										<a href="gallery-33.html"><img
											src="imgs/995fb34b598848ed04ccb998e3432a175c830287.png">����/����</a>
									</h3>
									<div class="item-list clearfix">
										<div class="subitem">
											<dl class="fore1">
												<dt>
													<a href="gallery-35.html"><img
														src="imgs/962150b6a67da5af2268fc949050229f1656605b.jpg">���˻���</a>
												</dt>
												<dd>
													<em><a href="gallery-36.html"><font color="red">���뵶</font></a></em>
													<em><a href="gallery-41.html">�紵��</a></em> <em><a
														href="gallery-42.html">��ǻ����</a></em> <em><a
														href="gallery-44.html">������/����</a></em> <em><a
														href="gallery-343.html">��/��ë��</a></em> <em><a
														href="gallery-345.html">������</a></em> <em><a
														href="gallery-45.html">С�Ͱ�Ħ��</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-442.html"><img
														src="imgs/15a7b787c1082661077ce75128bc3ac77a38fb2c.jpg">��Ħ/��������</a>
												</dt>
												<dd>
													<em><a href="gallery-137.html">��Ħ��</a></em> <em><a
														href="gallery-107.html">��ԡ��</a></em> <em><a
														href="gallery-76.html">Ѫѹ��/Ѫ����</a></em> <em><a
														href="gallery-128.html">֬��������</a></em> <em><a
														href="gallery-51.html">������</a></em> <em><a
														href="gallery-78.html">������</a></em> <em><a
														href="gallery-77.html">���¼�</a></em> <em><a
														href="gallery-79.html">��ͥҽ�����</a></em>
												</dd>
											</dl>
											<dl class="fore1">
												<dt>
													<a href="gallery-123.html"><img
														src="imgs/bd5b61bb94fe58ab4d91a8ab9e8d289494244237.jpg">����ѵ��</a>
												</dt>
												<dd>
													<em><a href="gallery-445.html">���峵</a></em> <em><a
														href="gallery-140.html">�ܲ���</a></em> <em><a
														href="gallery-346.html">����</a></em> <em><a
														href="gallery-430.html">��Բ��</a></em> <em><a
														href="gallery-429.html">�ۺ�ѵ����</a></em> <em><a
														href="gallery-125.html">�����˶���е</a></em> <em><a
														href="gallery-129.html">�˶����</a></em>
												</dd>
											</dl>
										</div>
										<div class="cat-right">
											<dl class="categorys-promotions">
												<dd>
													<table id="__01" border="0" cellpadding="0" cellspacing="0"
														height="352" width="165">
														<tbody>
															<tr>
																<td><a href="gallery-index---0---253.html"><img
																		src="imgs/gh_01.1" alt="" height="29" width="82"></a></td>
																<td><a href="gallery-index---0---255.html"><img
																		src="imgs/gh_02.1" alt="" height="29" width="83"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---261.html"><img
																		src="imgs/gh_03.1" alt="" height="29" width="82"></a></td>
																<td><a href="gallery-index---0---256.html"><img
																		src="imgs/gh_04.1" alt="" height="29" width="83"></a></td>
															</tr>
															<tr>
																<td><a href="gallery-index---0---258.html"><img
																		src="imgs/gh_05.1" alt="" height="30" width="82"></a></td>
																<td><a href="gallery-index---0---263.html"><img
																		src="imgs/huli812_06.jpg" alt="" height="30"
																		width="83"></a></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-14549.html"
																	target="_blank"><img src="imgs/huli826_07.jpg"
																		alt="" height="137" width="165"></a></td>
															</tr>
															<tr>
																<td colspan="2"><a href="product-12720.html"
																	target="_blank"><img src="imgs/huli826_08.jpg"
																		alt="" height="127" width="165"></a></td>
															</tr>
														</tbody>
													</table>

												</dd>
											</dl>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="nav-main">
					<ul class="clearfix nav-item">
						<li><a href="index.html">��ҳ</a></li>
						<li><a href="gallery-201.html" target="_blank">�յ�ר��</a></li>
						<li><a href="gallery-91.html" target="_blank">����������</a></li>
						<li><a href="index.php/activity-mendian.html" target="_blank">���������</a></li>
					</ul>
					<script>
						var url_self = GetPageName();
						$('.nav-item a').each(
								function() {
									var self_p_obj = $(this);
									var reg_url = new RegExp(url_self.replace(
											/\./, '\\.'));
									if (url_self != ''
											&& url_self != '/'
											&& url_self != 'index.php'
											&& reg_url.test($(this)
													.attr('href'))) {
										self_p_obj.addClass('current')
												.siblings().removeClass(
														'current');
									}
								});
						//��ȡҳ���ļ��� 
						function GetPageName() {
							var path_name = window.location.href.split('/')
									.pop();
							path_name = (path_name.match(/\?/) !== -1) ? path_name
									.split("?")[0]
									: path_name;
							return path_name;
						}
					</script>
				</div>
				<div class="nav-right">
					<ul class="nav-help-ul" id="loginstatus">
					<%
						nUser u = (nUser)session.getAttribute("nuser");
						if(u !=null){
							%>
							<li><a href="">��ӭ����,<%=u.getUsername()%>�˻����� </a></li>
							<li><a href="nuser/index.jsp"> ��̨���� </a>						
							<%
						}else{
					%>
						<li><a href="nuser/login.jsp"> ��¼ </a></li>
						<li><a href="nuser/rejister.jsp" target="_blank"> ע�� </a></li>
						<li><a href="admin/login.jsp"> ��̨��¼ </a>
						<%} %>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="head-keyword" id="">
		<div class="keyword-left">
			<div class="keyword-logo"></div>
		</div>
		<div class="keyword-right">
			<div class="keyword-cart"></div>
		</div>
		<div class="keyword-middle">
			<div class="keyword-search">
				<div id="bigAutocompleteContent" class="bigautocomplete-layout"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="imgs/jquery_002.js"></script>
	<script>
		$(function() {
			$("#search_keywords").bigAutocomplete({
				'url' : '/index.php/activity-keywords.html'
			});

		})
	</script>



	<script type="text/javascript">
		/*
		var _adwq = _adwq || [];
		_adwq.push(['_setAccount', 'x1ul1']);
		_adwq.push(['_setDomainName', '.sundan.com']);
		_adwq.push(['_trackPageview']);

		(function() {
		  var adw = document.createElement('script');
		  adw.type = 'text/javascript';
		  adw.async = true;
		  adw.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://s') + '.emarbox.com/js/adw.js';
		  var s = document.getElementsByTagName('script')[0];
		  s.parentNode.insertBefore(adw, s);
		})();
		 */
	</script>
	<div class="index_slide">
		<link href="imgs/style.css" rel="stylesheet" type="text/css">
			<link href="imgs/new2.css" rel="stylesheet">
				<link rel="stylesheet" href="imgs/head_menu.css">
					<script src="imgs/jquery.js"></script>



					<link href="imgs/slide_focus.css" rel="stylesheet">
						<div style="height: 360px; margin-bottom: 20px;">
							<div style="height: 360px; margin-bottom: 20px;">
								<div class="focusBox" style="margin: 0 auto">
									<ul class="pic"
										style="position: relative; width: 1879px; height: 360px;">
										<li
											style="position: absolute; width: 1879px; left: 0px; top: 0px; display: none;">
											<a href="product-15008.html" target="_blank"> <img
												src="imgs/sx_note37.jpg"></a>
										</li>
										<li
											style="position: absolute; width: 1879px; left: 0px; top: 0px; display: none;">
											<a href="product-13265.html" target="_blank"> <img
												src="imgs/daier.jpg"></a>
										</li>
										<li
											style="position: absolute; width: 1879px; left: 0px; top: 0px; display: none;">
											<a href="activity/2016/08/teacher/" target="_blank"> <img
												src="imgs/teacher_banner_1.jpg"></a>
										</li>
										<li
											style="position: absolute; width: 1879px; left: 0px; top: 0px;">
											<a href="activity/2016/08/surface/" target="_blank"> <img
												src="imgs/surface_banner.jpg"></a>
										</li>
									</ul>
									<div class="focus-slt">
										<a class="prev" href="javascript:void(0)"
											style="opacity: 0.399978; display: block;"></a> <a
											class="next" href="javascript:void(0)"
											style="opacity: 0.399978; display: block;"></a>
									</div>
									<ul class="hd" style="">
										<li class="">1</li>
										<li class="">2</li>
										<li class="">3</li>
										<li class="on">4</li>
									</ul>

								</div>
								<script src="imgs/jquery_003.js"></script>
								<script type="text/javascript">
									jQuery(".focusBox").hover(
											function() {
												jQuery(this)
														.find(".prev,.next")
														.stop(true, true)
														.fadeTo("show", 0.4)
											},
											function() {
												jQuery(this)
														.find(".prev,.next")
														.fadeOut(300)
											});
								</script>
							</div>
						</div>
	</div>
	<script>
		$.ajax({
			type : "POST",
			url : "/ads/indexslide.php",
			dataType : "html",
			success : function(data) {
				$(".index_slide").html(data);
				$(".hd").show();
			}
		});
	</script>
	<div class="box n-main screener">
		<div class="n-goods-list">
			<ul class="list" id="datalist">
				<form action="/cart-add-goods.html" method="post" id="buy_form">
					<input name="btype" class="btype" type="hidden"> <input
						name="mini_cart" value="" class="mini_cart" type="hidden">
							<input name="response_json" value="" class="response_json"
							type="hidden"> <input class="js-goods_id"
								name="goods[goods_id]" value="" type="hidden"> <input
									class="js-product_id" name="goods[product_id]" value=""
									type="hidden"> <input class="js-num" name="goods[num]"
										value="1" type="hidden">
				</form>
				
				<%
					for (Iterator<Product> it = products.iterator(); it.hasNext();) {
						Product p = it.next();
				%>
		<!--hot products start here -->
				<li class="n-goods"><a href="productshow.jsp?id=<%=p.getId() %>"
					target="_blank">
					<img src="imgs/products/<%=p.getId() %>.jpg" height="350" width="385"></a>
					<div class="con">
						<p class="name">
							<a href="productshow.jsp?id=<%=p.getId() %>" target="_blank">HOT!!-<%=p.getName() %></a>
						</p>
						<p class="ex">
							<span class="price">��<%=p.getMemberprice() %></span>
						</p>

						<div class="intro">
							<!--<span class="name-img1#0099b0"><img src="/statics/ad/m001.jpg" /> ���Է���</span>-->
						</div>
					</div> <a href="productshow.jsp?id=<%=p.getId() %>" target="_blank"><p class="info">
							���Ա�ۣ� <%=p.getMemberprice() %><br> ���г��ۣ� <%=p.getNormalprice() %><br> ���Ʒ������ <%=p.getDescr() %><br> �������ڣ�
										<%=p.getPdate() %><br>
						</p></a>
				</li>
		<!--products over -->
				<%
					}
				%>





	<script src="imgs/layer.js"></script>
	<script type="text/javascript">
		function public_login() {
			var publicLogin = layer.open({
				type : 1,
				title : false,
				closeBtn : 0,
				shadeClose : true,
				skin : 'public-lr',
				content : $('#public-login-box')
			});
			layer.style(publicLogin, {
				width : 'auto'
			});
		}

		function public_reg() {
			var publicReg = layer.open({
				type : 1,
				title : false,
				closeBtn : 0,
				shadeClose : true,
				skin : 'public-lr',
				content : $('#public-reg-box')
			});
			layer.style(publicReg, {
				width : 'auto'
			});
		}
	</script>
	<script>
		var linkreg = "/passport-signup_ajax_check_name.html";
	</script>
	<script type="text/javascript" src="imgs/head_login_reg.js"></script>

	<div style="display: none;">
		<script>
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "//hm.baidu.com/hm.js?285fc3052efc11334b80ae350c0b00f7";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script>
	</div>


	<script>
		$('.nftshare4').on('mouseover', function(event) {
			var obj = this;
			$("#weixinfenxiangcontentnongweixin").show();
		}).on('mouseout', function(event) {
			var obj = this;
			$("#weixinfenxiangcontentnongweixin").hide();
		});
	</script>
	<script>
		var url_self = GetPageName();
		$('.n-nav a').each(
				function() {
					var self_p_obj = $(this).parent();
					var reg_url = new RegExp(url_self.replace(/\./, '\\.'));
					if (url_self != '' && url_self != '/'
							&& url_self != 'index.php'
							&& reg_url.test($(this).attr('href'))) {
						self_p_obj.addClass('hover').siblings().removeClass(
								'hover');
					}
				});
		//��ȡҳ���ļ��� 
		function GetPageName() {
			var path_name = window.location.href.split('/').pop();
			path_name = (path_name.match(/\?/) !== -1) ? path_name.split("?")[0]
					: path_name;
			return path_name;
		}
	</script>
	<script src="imgs/head-nav.js"></script>
</body>
</html>